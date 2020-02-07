#!/bin/bash
# Play audio from random video files between hours of 10AM and midnight
# Useful when going on vacation



rootpath='/path/to/video/root/dir'


while (( 1 < 2 ))
do

        if (( $(date +"%H") > 10 )); then
                echo "Within time frame. Playing video"
                mplayer "$( find "$rootpath" -type f \
                        \( -iname '*.mkv' -o -iname '*.avi' -o -iname '*.mp4' \) \
                        | sort -R | head -n 1)" -novideo
        else
                echo "Outside of time frame. Sleeping 30 min"
                sleep 30m
        fi
done
