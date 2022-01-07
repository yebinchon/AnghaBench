
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int sc_invalid; int sc_mem_res; int sc_irq_res; int sc_irq_handle; } ;
struct bwi_pci_softc {struct bwi_softc sc_sc; } ;
typedef int device_t ;


 int BS_BAR ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_child_present (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int bwi_detach (struct bwi_softc*) ;
 struct bwi_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bwi_pci_detach(device_t dev)
{
 struct bwi_pci_softc *psc = device_get_softc(dev);
 struct bwi_softc *sc = &psc->sc_sc;


 sc->sc_invalid = !bus_child_present(dev);

 bwi_detach(sc);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_irq_handle);
 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);

 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_mem_res);

 return (0);
}
