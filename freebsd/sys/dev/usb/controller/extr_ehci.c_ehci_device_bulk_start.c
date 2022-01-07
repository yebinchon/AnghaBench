
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_6__ {int sc_flags; int sc_async_p_last; } ;
typedef TYPE_2__ ehci_softc_t ;
struct TYPE_5__ {int bus; } ;


 TYPE_2__* EHCI_BUS2SC (int ) ;
 int EHCI_SCFLG_IAADBUG ;
 int ehci_doorbell_async (TYPE_2__*) ;
 int ehci_setup_standard_chain (struct usb_xfer*,int *) ;
 int ehci_transfer_intr_enqueue (struct usb_xfer*) ;

__attribute__((used)) static void
ehci_device_bulk_start(struct usb_xfer *xfer)
{
 ehci_softc_t *sc = EHCI_BUS2SC(xfer->xroot->bus);


 ehci_setup_standard_chain(xfer, &sc->sc_async_p_last);


 ehci_transfer_intr_enqueue(xfer);





 if (sc->sc_flags & EHCI_SCFLG_IAADBUG)
  return;

 ehci_doorbell_async(sc);
}
