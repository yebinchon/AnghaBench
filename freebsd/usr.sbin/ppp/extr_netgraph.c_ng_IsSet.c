
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct ngdevice {scalar_t__ cs; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct ngdevice* device2ng (int ) ;
 scalar_t__ physical_IsSet (struct fdescriptor*,int const*) ;

__attribute__((used)) static int
ng_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct physical *p = descriptor2physical(d);
  struct ngdevice *dev = device2ng(p->handler);
  int result;

  result = dev->cs >= 0 && FD_ISSET(dev->cs, fdset);
  result += physical_IsSet(d, fdset);

  return result;
}
