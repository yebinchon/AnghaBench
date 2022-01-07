
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int * sc_mem; int * sc_irq; int sc_ih; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 struct iwm_softc* device_get_softc (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static void
iwm_pci_detach(device_t dev)
{
 struct iwm_softc *sc = device_get_softc(dev);

 if (sc->sc_irq != ((void*)0)) {
  bus_teardown_intr(dev, sc->sc_irq, sc->sc_ih);
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->sc_irq), sc->sc_irq);
  pci_release_msi(dev);
        }
 if (sc->sc_mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->sc_mem), sc->sc_mem);
}
