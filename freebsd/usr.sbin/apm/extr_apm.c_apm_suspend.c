
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APMIO_SUSPEND ;
 int err (int,char*) ;
 int ioctl (int,int ,int *) ;

__attribute__((used)) static void
apm_suspend(int fd)
{
 if (ioctl(fd, APMIO_SUSPEND, ((void*)0)) == -1)
  err(1, "ioctl(APMIO_SUSPEND)");
}
