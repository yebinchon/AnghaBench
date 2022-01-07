
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_xhci_softc {int xsc_pi; } ;


 int pci_lintr_assert (int ) ;
 int pci_msi_enabled (int ) ;

__attribute__((used)) static void
pci_xhci_deassert_interrupt(struct pci_xhci_softc *sc)
{

 if (!pci_msi_enabled(sc->xsc_pi))
  pci_lintr_assert(sc->xsc_pi);
}
