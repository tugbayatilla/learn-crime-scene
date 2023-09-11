#!/bin/sh

ProjectName="zealot"
ProjectDir=""
BeforeData=2024-11-01
# create first evaluation file. 
# add lines, remove lines, file name

gitDirectory="$ProjectDir\.git"
git --git-dir $gitDirectory log --pretty=format:'[%h] %aN %ad %s' --date=short --numstat --before=$BeforeData > "${ProjectName}_evo.log"


# create an alias for future usage
alias maat="docker run -v $projectDir:/data -it code-maat-app -c git"

