
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_4__ {int retry; int * irq; int * port1; int * port0; } ;
typedef TYPE_1__ atkbdc_softc_t ;


 int ENOMEM ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int atkbdc_attach_unit (int,TYPE_1__*,int *,int *) ;
 TYPE_1__* atkbdc_get_softc (int) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;

__attribute__((used)) static int
atkbdc_isa_attach(device_t dev)
{
 atkbdc_softc_t *sc;
 int unit;
 int error;
 int rid;

 unit = device_get_unit(dev);
 sc = *(atkbdc_softc_t **)device_get_softc(dev);
 if (sc == ((void*)0)) {







  sc = atkbdc_get_softc(unit);
  if (sc == ((void*)0))
   return ENOMEM;
 }

 rid = 0;
 sc->retry = 5000;
 sc->port0 = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
        RF_ACTIVE);
 if (sc->port0 == ((void*)0))
  return ENXIO;
 rid = 1;
 sc->port1 = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
        RF_ACTIVE);
 if (sc->port1 == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT, 0, sc->port0);
  return ENXIO;
 }






 rid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);

 error = atkbdc_attach_unit(unit, sc, sc->port0, sc->port1);
 if (error) {
  bus_release_resource(dev, SYS_RES_IOPORT, 0, sc->port0);
  bus_release_resource(dev, SYS_RES_IOPORT, 1, sc->port1);
  if (sc->irq != ((void*)0))
   bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq);
  return error;
 }
 *(atkbdc_softc_t **)device_get_softc(dev) = sc;

 bus_generic_probe(dev);
 bus_generic_attach(dev);

 return 0;
}
