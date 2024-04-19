#!/bin/bash

# Load proxies from file
proxies=$(cat http.txt)

# Set URL
url="http://6z6juznnu2pcqyns744g5fads4yvmlaa.oastify.com"

# Loop through proxies and send GET requests in background
for proxy in $proxies; do
	(
		while true; do
			curl -s -x $proxy -X GET $url &
			sleep 0.1
		done
	) &
done
