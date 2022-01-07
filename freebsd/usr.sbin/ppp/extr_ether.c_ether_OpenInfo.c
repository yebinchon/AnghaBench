
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct etherdevice {int connected; } ;




 struct etherdevice* device2ether (int ) ;

__attribute__((used)) static const char *
ether_OpenInfo(struct physical *p)
{
  struct etherdevice *dev = device2ether(p->handler);

  switch (dev->connected) {
    case 128:
      return "negotiating";
    case 129:
      return "established";
  }

  return "disconnected";
}
