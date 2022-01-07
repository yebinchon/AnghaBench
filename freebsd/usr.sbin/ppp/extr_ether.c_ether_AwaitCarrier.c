
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct etherdevice {scalar_t__ connected; int timeout; } ;


 scalar_t__ CARRIER_LOST ;
 scalar_t__ CARRIER_OK ;
 scalar_t__ CARRIER_PENDING ;
 struct etherdevice* device2ether (int ) ;
 int ether_MessageIn (struct etherdevice*) ;

__attribute__((used)) static int
ether_AwaitCarrier(struct physical *p)
{
  struct etherdevice *dev = device2ether(p->handler);

  if (dev->connected != CARRIER_OK && !dev->timeout--)
    dev->connected = CARRIER_LOST;
  else if (dev->connected == CARRIER_PENDING)
    ether_MessageIn(dev);

  return dev->connected;
}
