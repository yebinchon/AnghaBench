
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pci_xhci_softc {int * portregs; } ;
struct TYPE_2__ {int hci_address; } ;
struct pci_xhci_dev_emu {scalar_t__ dev_slotstate; TYPE_1__ hci; } ;


 int DPRINTF (char*) ;
 int XHCI_MAX_SLOTS ;
 struct pci_xhci_dev_emu* XHCI_SLOTDEV_PTR (struct pci_xhci_softc*,int) ;
 scalar_t__ XHCI_ST_DISABLED ;
 scalar_t__ XHCI_ST_ENABLED ;
 scalar_t__ XHCI_TRB_ERROR_NO_SLOTS ;
 scalar_t__ XHCI_TRB_ERROR_SUCCESS ;

__attribute__((used)) static uint32_t
pci_xhci_cmd_enable_slot(struct pci_xhci_softc *sc, uint32_t *slot)
{
 struct pci_xhci_dev_emu *dev;
 uint32_t cmderr;
 int i;

 cmderr = XHCI_TRB_ERROR_NO_SLOTS;
 if (sc->portregs != ((void*)0))
  for (i = 1; i <= XHCI_MAX_SLOTS; i++) {
   dev = XHCI_SLOTDEV_PTR(sc, i);
   if (dev && dev->dev_slotstate == XHCI_ST_DISABLED) {
    *slot = i;
    dev->dev_slotstate = XHCI_ST_ENABLED;
    cmderr = XHCI_TRB_ERROR_SUCCESS;
    dev->hci.hci_address = i;
    break;
   }
  }

 DPRINTF(("pci_xhci enable slot (error=%d) slot %u\r\n",
  cmderr != XHCI_TRB_ERROR_SUCCESS, *slot));

 return (cmderr);
}
