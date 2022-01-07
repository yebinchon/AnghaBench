
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_softc {int sc_mutex; int sc_memr; int sc_memrid; int sc_irq; int sc_irqrid; int sc_ih; int * sc_leddev; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct pmu_softc* device_get_softc (int ) ;
 int led_destroy (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
pmu_detach(device_t dev)
{
 struct pmu_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_leddev != ((void*)0))
  led_destroy(sc->sc_leddev);

 bus_teardown_intr(dev, sc->sc_irq, sc->sc_ih);
 bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqrid, sc->sc_irq);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_memrid, sc->sc_memr);
 mtx_destroy(&sc->sc_mutex);

 return (bus_generic_detach(dev));
}
