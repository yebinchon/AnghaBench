
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct uss820dci_softc {int sc_bus; } ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_xfer {TYPE_1__ flags_int; int endpoint; TYPE_2__* xroot; } ;
struct TYPE_4__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ,int ) ;
 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 scalar_t__ USB_MODE_DEVICE ;
 struct uss820dci_softc* USS820_DCI_BUS2SC (int ) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;
 int uss820dci_intr_set (struct usb_xfer*,int ) ;

__attribute__((used)) static void
uss820dci_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct uss820dci_softc *sc = USS820_DCI_BUS2SC(xfer->xroot->bus);

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 DPRINTFN(2, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);

 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
  uss820dci_intr_set(xfer, 0);
 }

 usbd_transfer_done(xfer, error);

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
