
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct etherdevice {int slot; } ;


 struct etherdevice* device2ether (int ) ;

__attribute__((used)) static int
ether_Slot(struct physical *p)
{
  struct etherdevice *dev = device2ether(p->handler);

  return dev->slot;
}
