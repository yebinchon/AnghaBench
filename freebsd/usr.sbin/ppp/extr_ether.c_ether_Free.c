
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int handler; } ;
struct etherdevice {int cs; } ;


 int close (int) ;
 struct etherdevice* device2ether (int ) ;
 int free (struct etherdevice*) ;
 int physical_SetDescriptor (struct physical*) ;

__attribute__((used)) static void
ether_Free(struct physical *p)
{
  struct etherdevice *dev = device2ether(p->handler);

  physical_SetDescriptor(p);
  if (dev->cs != -1)
    close(dev->cs);
  free(dev);
}
