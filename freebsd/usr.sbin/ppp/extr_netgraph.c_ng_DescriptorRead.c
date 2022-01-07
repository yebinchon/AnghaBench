
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct ngdevice {scalar_t__ cs; } ;
struct fdescriptor {int dummy; } ;
struct bundle {int dummy; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct ngdevice* device2ng (int ) ;
 int ng_MessageIn (struct physical*,int *,int ) ;
 int physical_DescriptorRead (struct fdescriptor*,struct bundle*,int const*) ;
 scalar_t__ physical_IsSet (struct fdescriptor*,int const*) ;

__attribute__((used)) static void
ng_DescriptorRead(struct fdescriptor *d, struct bundle *bundle,
                  const fd_set *fdset)
{
  struct physical *p = descriptor2physical(d);
  struct ngdevice *dev = device2ng(p->handler);

  if (dev->cs >= 0 && FD_ISSET(dev->cs, fdset))
    ng_MessageIn(p, ((void*)0), 0);

  if (physical_IsSet(d, fdset))
    physical_DescriptorRead(d, bundle, fdset);
}
