
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_softc {struct resource* base_res; int bsh; int bst; struct resource* irq_res; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,struct resource*) ;
 struct cbb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int isa_intr_mask ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;

__attribute__((used)) static int
cbb_isa_activate(device_t dev)
{
 struct cbb_softc *sc = device_get_softc(dev);
 struct resource *res;
 int rid;
 int i;


 rid = 0;
 res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {





  for (i = 0; i < 16 && res == ((void*)0); i++) {
   if (((1 << i) & isa_intr_mask) == 0)
    continue;
   res = bus_alloc_resource(dev, SYS_RES_IRQ, &rid, i, i,
       1, RF_ACTIVE);
  }
 }
 if (res == ((void*)0))
  return (ENXIO);
 sc->irq_res = res;
 rid = 0;
 res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
  sc->irq_res = ((void*)0);
  device_printf(dev, "Cannot allocate I/O\n");
  return (ENOMEM);
 }
 sc->bst = rman_get_bustag(res);
 sc->bsh = rman_get_bushandle(res);
 sc->base_res = res;
 return (0);
}
