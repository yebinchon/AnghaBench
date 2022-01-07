
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct physical {int dl; TYPE_1__ link; int handler; } ;
struct fdescriptor {int dummy; } ;
struct etherdevice {scalar_t__ cs; scalar_t__ connected; } ;
struct bundle {int dummy; } ;
typedef int fd_set ;


 scalar_t__ CARRIER_LOST ;
 int CLOSE_NORMAL ;
 scalar_t__ FD_ISSET (scalar_t__,int const*) ;
 int LogPHASE ;
 int datalink_Down (int ,int ) ;
 struct physical* descriptor2physical (struct fdescriptor*) ;
 struct etherdevice* device2ether (int ) ;
 int ether_MessageIn (struct etherdevice*) ;
 int log_Printf (int ,char*,int ) ;
 int physical_DescriptorRead (struct fdescriptor*,struct bundle*,int const*) ;
 scalar_t__ physical_IsSet (struct fdescriptor*,int const*) ;

__attribute__((used)) static void
ether_DescriptorRead(struct fdescriptor *d, struct bundle *bundle,
                     const fd_set *fdset)
{
  struct physical *p = descriptor2physical(d);
  struct etherdevice *dev = device2ether(p->handler);

  if (dev->cs >= 0 && FD_ISSET(dev->cs, fdset)) {
    ether_MessageIn(dev);
    if (dev->connected == CARRIER_LOST) {
      log_Printf(LogPHASE, "%s: Device disconnected\n", p->link.name);
      datalink_Down(p->dl, CLOSE_NORMAL);
      return;
    }
  }

  if (physical_IsSet(d, fdset))
    physical_DescriptorRead(d, bundle, fdset);
}
