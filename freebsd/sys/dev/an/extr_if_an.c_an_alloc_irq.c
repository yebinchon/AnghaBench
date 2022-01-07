
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct an_softc {int irq_rid; struct resource* irq_res; } ;
typedef int device_t ;


 int ENOENT ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 struct an_softc* device_get_softc (int ) ;

int
an_alloc_irq(device_t dev, int rid, int flags)
{
 struct an_softc *sc = device_get_softc(dev);
 struct resource *res;

 res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
         (RF_ACTIVE | flags));
 if (res) {
  sc->irq_rid = rid;
  sc->irq_res = res;
  return (0);
 } else {
  return (ENOENT);
 }
}
