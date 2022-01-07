
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_xfer {size_t qh_pos; TYPE_1__* xroot; } ;
struct TYPE_5__ {int * sc_intr_stat; } ;
typedef TYPE_2__ ohci_softc_t ;
struct TYPE_4__ {int bus; } ;


 TYPE_2__* OHCI_BUS2SC (int ) ;
 int USB_ERR_CANCELLED ;
 int ohci_device_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
ohci_device_intr_close(struct usb_xfer *xfer)
{
 ohci_softc_t *sc = OHCI_BUS2SC(xfer->xroot->bus);

 sc->sc_intr_stat[xfer->qh_pos]--;

 ohci_device_done(xfer, USB_ERR_CANCELLED);
}
