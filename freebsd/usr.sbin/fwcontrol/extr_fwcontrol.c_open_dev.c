
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int open (char*,int ) ;

__attribute__((used)) static int
open_dev(int *fd, char *devname)
{
 if (*fd < 0) {
  *fd = open(devname, O_RDWR);
  if (*fd < 0)
   return(-1);

 }
 return(0);
}
