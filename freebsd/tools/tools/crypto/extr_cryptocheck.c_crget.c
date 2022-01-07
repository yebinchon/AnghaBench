
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRIOGET ;
 int F_SETFD ;
 int devcrypto () ;
 int err (int,char*) ;
 int fcntl (int,int ,int) ;
 int ioctl (int ,int ,int*) ;

__attribute__((used)) static int
crget(void)
{
 int fd;

 if (ioctl(devcrypto(), CRIOGET, &fd) == -1)
  err(1, "ioctl(CRIOGET)");
 if (fcntl(fd, F_SETFD, 1) == -1)
  err(1, "fcntl(F_SETFD) (crget)");
 return fd;
}
