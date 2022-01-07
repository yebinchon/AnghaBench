
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APMIO_DISABLE ;
 int APMIO_ENABLE ;
 int err (int,char*) ;
 int ioctl (int,int ) ;

__attribute__((used)) static void
apm_enable(int fd, int enable)
{
 if (enable) {
  if (ioctl(fd, APMIO_ENABLE) == -1)
   err(1, "ioctl(APMIO_ENABLE)");
 } else {
  if (ioctl(fd, APMIO_DISABLE) == -1)
   err(1, "ioctl(APMIO_DISABLE)");
 }
}
