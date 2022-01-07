
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iman; int erdp; } ;
struct TYPE_5__ {TYPE_1__ intrreg; } ;
struct TYPE_6__ {int usbcmd; int usbsts; } ;
struct pci_xhci_softc {int xsc_pi; TYPE_2__ rtsregs; TYPE_3__ opregs; } ;


 int XHCI_CMD_INTE ;
 int XHCI_ERDP_LO_BUSY ;
 int XHCI_IMAN_INTR_ENA ;
 int XHCI_IMAN_INTR_PEND ;
 int XHCI_STS_EINT ;
 int pci_generate_msi (int ,int ) ;
 int pci_lintr_assert (int ) ;
 scalar_t__ pci_msi_enabled (int ) ;

__attribute__((used)) static void
pci_xhci_assert_interrupt(struct pci_xhci_softc *sc)
{

 sc->rtsregs.intrreg.erdp |= XHCI_ERDP_LO_BUSY;
 sc->rtsregs.intrreg.iman |= XHCI_IMAN_INTR_PEND;
 sc->opregs.usbsts |= XHCI_STS_EINT;


 if ((sc->opregs.usbcmd & XHCI_CMD_INTE) &&
     (sc->rtsregs.intrreg.iman & XHCI_IMAN_INTR_ENA)) {
  if (pci_msi_enabled(sc->xsc_pi))
   pci_generate_msi(sc->xsc_pi, 0);
  else
   pci_lintr_assert(sc->xsc_pi);
 }
}
