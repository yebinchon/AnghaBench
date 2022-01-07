
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APMIO_HALTCPU ;
 int APMIO_NOTHALTCPU ;
 int err (int,char*) ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void
apm_haltcpu(int fd, int enable)
{
 if (enable) {
  if (ioctl(fd, APMIO_HALTCPU, ((void*)0)) == -1)
   err(1, "ioctl(APMIO_HALTCPU)");
 } else {
  if (ioctl(fd, APMIO_NOTHALTCPU, ((void*)0)) == -1)
   err(1, "ioctl(APMIO_NOTHALTCPU)");
 }
}
