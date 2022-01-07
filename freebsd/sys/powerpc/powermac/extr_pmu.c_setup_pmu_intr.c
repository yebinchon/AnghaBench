
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_softc {int * sc_irq; scalar_t__ sc_irqrid; int sc_ih; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,int ,int *) ;
 struct pmu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pmu_intr ;

__attribute__((used)) static int
setup_pmu_intr(device_t dev, device_t extint)
{
 struct pmu_softc *sc;
 sc = device_get_softc(dev);

 sc->sc_irqrid = 0;
 sc->sc_irq = bus_alloc_resource_any(extint, SYS_RES_IRQ, &sc->sc_irqrid,
            RF_ACTIVE);
        if (sc->sc_irq == ((void*)0)) {
                device_printf(dev, "could not allocate interrupt\n");
                return (ENXIO);
        }

 if (bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_MISC | INTR_MPSAFE
     | INTR_ENTROPY, ((void*)0), pmu_intr, dev, &sc->sc_ih) != 0) {
                device_printf(dev, "could not setup interrupt\n");
                bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqrid,
                    sc->sc_irq);
                return (ENXIO);
        }

 return (0);
}
