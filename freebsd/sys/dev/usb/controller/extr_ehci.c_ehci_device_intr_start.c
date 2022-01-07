
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_xfer {size_t qh_pos; TYPE_1__* xroot; } ;
struct TYPE_5__ {int * sc_intr_p_last; } ;
typedef TYPE_2__ ehci_softc_t ;
struct TYPE_4__ {int bus; } ;


 TYPE_2__* EHCI_BUS2SC (int ) ;
 int ehci_setup_standard_chain (struct usb_xfer*,int *) ;
 int ehci_transfer_intr_enqueue (struct usb_xfer*) ;

__attribute__((used)) static void
ehci_device_intr_start(struct usb_xfer *xfer)
{
 ehci_softc_t *sc = EHCI_BUS2SC(xfer->xroot->bus);


 ehci_setup_standard_chain(xfer, &sc->sc_intr_p_last[xfer->qh_pos]);


 ehci_transfer_intr_enqueue(xfer);
}
