
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APMIO_DISPLAY ;
 int err (int,char*) ;
 int ioctl (int,int ,int*) ;

__attribute__((used)) static void
apm_display(int fd, int newstate)
{
 if (ioctl(fd, APMIO_DISPLAY, &newstate) == -1)
  err(1, "ioctl(APMIO_DISPLAY)");
}
