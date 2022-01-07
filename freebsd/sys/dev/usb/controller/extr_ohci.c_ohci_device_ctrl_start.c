
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_5__ {int sc_ctrl_p_last; } ;
typedef TYPE_2__ ohci_softc_t ;
struct TYPE_4__ {int bus; } ;


 TYPE_2__* OHCI_BUS2SC (int ) ;
 int ohci_setup_standard_chain (struct usb_xfer*,int *) ;
 int ohci_transfer_intr_enqueue (struct usb_xfer*) ;

__attribute__((used)) static void
ohci_device_ctrl_start(struct usb_xfer *xfer)
{
 ohci_softc_t *sc = OHCI_BUS2SC(xfer->xroot->bus);


 ohci_setup_standard_chain(xfer, &sc->sc_ctrl_p_last);


 ohci_transfer_intr_enqueue(xfer);
}
