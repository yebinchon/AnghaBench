
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct fdescriptor {int dummy; } ;
struct etherdevice {scalar_t__ cs; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct etherdevice* device2ether (int ) ;
 scalar_t__ physical_IsSet (struct fdescriptor*,int const*) ;

__attribute__((used)) static int
ether_IsSet(struct fdescriptor *d, const fd_set *fdset)
{
  struct physical *p = descriptor2physical(d);
  struct etherdevice *dev = device2ether(p->handler);
  int result;

  result = dev->cs >= 0 && FD_ISSET(dev->cs, fdset);
  result += physical_IsSet(d, fdset);

  return result;
}
