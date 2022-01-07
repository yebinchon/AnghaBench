
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_invalid; int sc_dmat; } ;
struct mwl_pci_softc {int sc_sr0; int sc_sr1; int sc_irq; int sc_ih; struct mwl_softc sc_sc; } ;
typedef int device_t ;


 int BS_BAR0 ;
 int BS_BAR1 ;
 int MWL_LOCK_DESTROY (struct mwl_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_child_present (int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct mwl_pci_softc* device_get_softc (int ) ;
 int mwl_detach (struct mwl_softc*) ;

__attribute__((used)) static int
mwl_pci_detach(device_t dev)
{
 struct mwl_pci_softc *psc = device_get_softc(dev);
 struct mwl_softc *sc = &psc->sc_sc;


 sc->sc_invalid = !bus_child_present(dev);

 mwl_detach(sc);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, psc->sc_irq, psc->sc_ih);
 bus_release_resource(dev, SYS_RES_IRQ, 0, psc->sc_irq);

 bus_dma_tag_destroy(sc->sc_dmat);
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR1, psc->sc_sr1);
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR0, psc->sc_sr0);

 MWL_LOCK_DESTROY(sc);

 return (0);
}
