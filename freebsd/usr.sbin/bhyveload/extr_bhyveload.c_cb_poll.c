
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONREAD ;
 int consin_fd ;
 scalar_t__ ioctl (int ,int ,int*) ;

__attribute__((used)) static int
cb_poll(void *arg)
{
 int n;

 if (ioctl(consin_fd, FIONREAD, &n) >= 0)
  return (n > 0);
 return (0);
}
