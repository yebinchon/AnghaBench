
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct fdescriptor {int dummy; } ;
struct execdevice {scalar_t__ fd_out; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct execdevice* device2exec (int ) ;
 scalar_t__ physical_IsSet (struct fdescriptor*,int const*) ;

__attribute__((used)) static int
exec_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct physical *p = descriptor2physical(d);
  struct execdevice *dev = device2exec(p->handler);
  int result = dev->fd_out >= 0 && FD_ISSET(dev->fd_out, fdset);
  result += physical_IsSet(d, fdset);

  return result;
}
