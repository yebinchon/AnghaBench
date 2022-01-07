
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAXPATHLEN ;
 int open (char*,int) ;
 int snprintf (char*,int,char*,int) ;

int
mfi_open(int unit, int acs)
{
 char path[MAXPATHLEN];

 snprintf(path, sizeof(path), "/dev/mfi%d", unit);
 return (open(path, acs));
}
