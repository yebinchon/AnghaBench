
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intelspi_softc {int * sc_irq_res; int sc_irq_rid; int * sc_mem_res; int sc_mem_rid; scalar_t__ sc_irq_ih; } ;
typedef int device_t ;


 int INTELSPI_LOCK_DESTROY (struct intelspi_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 struct intelspi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
intelspi_detach(device_t dev)
{
 struct intelspi_softc *sc;

 sc = device_get_softc(dev);

 INTELSPI_LOCK_DESTROY(sc);

 if (sc->sc_irq_ih)
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_irq_ih);

 if (sc->sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);

 if (sc->sc_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
      sc->sc_irq_rid, sc->sc_irq_res);

 return (bus_generic_detach(dev));
}
