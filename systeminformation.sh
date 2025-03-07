#!/bin/bash

echo "Your User:"
whoami

echo "~~~~~~~~~~"

echo "CPU Name and Speed:"
lscpu | grep -E 'Model name|CPU MHz'

echo "~~~~~~~~~~"

echo "Free and Total Memory:"
free -h | grep -E 'Mem|Swap'

echo "~~~~~~~~~~"

echo "Free and Total Swap Space:"
free -h | grep 'Swap'

echo "~~~~~~~~~~"

echo "Free and Total Space on ext4 and XFS Partitions:"
df -hT | grep -E 'ext4|xfs'

echo "~~~~~~~~~~"

echo "IP Information:"
ip -o -4 addr show
