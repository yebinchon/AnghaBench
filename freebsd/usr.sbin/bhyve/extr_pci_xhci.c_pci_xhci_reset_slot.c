
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_xhci_softc {int dummy; } ;
struct pci_xhci_dev_emu {int dev_slotstate; } ;


 int DPRINTF (char*) ;
 struct pci_xhci_dev_emu* XHCI_SLOTDEV_PTR (struct pci_xhci_softc*,int) ;
 int XHCI_ST_DISABLED ;

__attribute__((used)) static void
pci_xhci_reset_slot(struct pci_xhci_softc *sc, int slot)
{
 struct pci_xhci_dev_emu *dev;

 dev = XHCI_SLOTDEV_PTR(sc, slot);

 if (!dev) {
  DPRINTF(("xhci reset unassigned slot (%d)?\r\n", slot));
 } else {
  dev->dev_slotstate = XHCI_ST_DISABLED;
 }


}
