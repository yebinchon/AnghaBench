
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAXPATHLEN ;
 int O_RDWR ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,int) ;

int
mpt_open(int unit)
{
 char path[MAXPATHLEN];

 snprintf(path, sizeof(path), "/dev/mpt%d", unit);
 return (open(path, O_RDWR));
}
