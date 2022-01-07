
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int fd; int handler; } ;
struct execdevice {int fd_out; } ;
typedef int ssize_t ;


 struct execdevice* device2exec (int ) ;
 int write (int,void const*,size_t) ;

__attribute__((used)) static ssize_t
exec_Write(struct physical *p, const void *v, size_t n)
{
  struct execdevice *dev = device2exec(p->handler);
  int fd = dev->fd_out == -1 ? p->fd : dev->fd_out;

  return write(fd, v, n);
}
