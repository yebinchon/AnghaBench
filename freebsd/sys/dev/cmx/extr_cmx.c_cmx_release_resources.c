
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmx_softc {int * ioport; int ioport_rid; int * irq; int irq_rid; int * ih; int mtx; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_deactivate_resource (int ,int ,int ,int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 struct cmx_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

void
cmx_release_resources(device_t dev)
{
 struct cmx_softc *sc = device_get_softc(dev);

 mtx_destroy(&sc->mtx);
 if (sc->ioport) {
  bus_deactivate_resource(dev, SYS_RES_IOPORT,
    sc->ioport_rid, sc->ioport);
  bus_release_resource(dev, SYS_RES_IOPORT,
    sc->ioport_rid, sc->ioport);
  sc->ioport = ((void*)0);
 }
 return;
}
