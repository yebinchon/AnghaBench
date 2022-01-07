
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFIOCSPLR ;
 int O_WRONLY ;
 int close (int) ;
 int err (int,char*) ;
 int getfd (int ) ;
 scalar_t__ ioctl (int,int ,int ) ;

__attribute__((used)) static void
setplr(void)
{
 int fd = getfd(O_WRONLY);
 if (ioctl(fd, CFIOCSPLR, 0) < 0)
  err(-1, "ioctl(CFIOCPLR)");
 close(fd);
}
