
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chvgpio_softc {int * sc_mem_res; int sc_mem_rid; int * sc_irq_res; int sc_irq_rid; int * intr_handle; int sc_dev; scalar_t__ sc_busdev; } ;
typedef int device_t ;


 int CHVGPIO_LOCK_DESTROY (struct chvgpio_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 struct chvgpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;

__attribute__((used)) static int
chvgpio_detach(device_t dev)
{
 struct chvgpio_softc *sc;
 sc = device_get_softc(dev);

 if (sc->sc_busdev)
  gpiobus_detach_bus(dev);

 if (sc->intr_handle != ((void*)0))
     bus_teardown_intr(sc->sc_dev, sc->sc_irq_res, sc->intr_handle);
 if (sc->sc_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irq_rid, sc->sc_irq_res);
 if (sc->sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_mem_rid, sc->sc_mem_res);

 CHVGPIO_LOCK_DESTROY(sc);

    return (0);
}
