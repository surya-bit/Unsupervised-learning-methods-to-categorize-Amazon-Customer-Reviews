#!/bin/bash                                                                   

# untar your R installation                                                  
 
tar -xzf python38.tar.gz
tar -xzf packages.tar.gz
# tar -xzf data.tar.gz
#maybe install R here?                                                         
cp /staging/groups/STAT_DSCP/amazon-data/archive/$1  ./
# make sure the script will use your R installation,                           
# and the working directory as its home location                               
export PATH=$PWD/python/bin:$PATH
export PYTHONPATH=$PWD/packages
export HOME=$PWD

#make directory                                                                
#  mkdir data
# run your script                                                              
python3  project.py $1

rm $1


#  $1 $2 # note: the two actual command-line arguments          
                         # are in hw4.sub's "arguments = " line           
