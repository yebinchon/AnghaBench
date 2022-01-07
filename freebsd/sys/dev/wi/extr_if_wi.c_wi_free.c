
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int * mem; int mem_rid; int * irq; int irq_rid; int * iobase; int iobase_rid; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct wi_softc* device_get_softc (int ) ;

void
wi_free(device_t dev)
{
 struct wi_softc *sc = device_get_softc(dev);

 if (sc->iobase != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IOPORT, sc->iobase_rid, sc->iobase);
  sc->iobase = ((void*)0);
 }
 if (sc->irq != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, sc->irq_rid, sc->irq);
  sc->irq = ((void*)0);
 }
 if (sc->mem != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);
  sc->mem = ((void*)0);
 }
}
