
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int * base_res; int * irq_res; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct cbb_softc* device_get_softc (int ) ;

__attribute__((used)) static void
cbb_isa_deactivate(device_t dev)
{
 struct cbb_softc *sc = device_get_softc(dev);

 if (sc->irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 sc->irq_res = ((void*)0);
 if (sc->base_res)
  bus_release_resource(dev, SYS_RES_IOPORT, 0, sc->base_res);
 sc->base_res = ((void*)0);
}
