
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APMIO_STANDBY ;
 int err (int,char*) ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void
apm_standby(int fd)
{
 if (ioctl(fd, APMIO_STANDBY, ((void*)0)) == -1)
  err(1, "ioctl(APMIO_STANDBY)");
}
