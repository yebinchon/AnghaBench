
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MAXPATHLEN ;
 int O_RDWR ;
 scalar_t__ is_mps ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,int) ;

int
mps_open(int unit)
{
 char path[MAXPATHLEN];

 snprintf(path, sizeof(path), "/dev/mp%s%d", is_mps ? "s": "r", unit);
 return (open(path, O_RDWR));
}
