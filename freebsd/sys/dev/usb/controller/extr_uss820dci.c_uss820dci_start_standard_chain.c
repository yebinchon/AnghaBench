
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uss820dci_softc {int sc_bus; } ;
struct usb_xfer {scalar_t__ timeout; TYPE_1__* xroot; } ;
struct TYPE_4__ {int intr_q; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;


 int DPRINTFN (int,char*) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 struct uss820dci_softc* USS820_DCI_BUS2SC (TYPE_2__*) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;
 int uss820dci_intr_set (struct usb_xfer*,int) ;
 int uss820dci_timeout ;
 scalar_t__ uss820dci_xfer_do_complete (struct usb_xfer*) ;
 int uss820dci_xfer_do_fifo (struct usb_xfer*) ;

__attribute__((used)) static void
uss820dci_start_standard_chain(struct usb_xfer *xfer)
{
 struct uss820dci_softc *sc = USS820_DCI_BUS2SC(xfer->xroot->bus);

 DPRINTFN(9, "\n");

 USB_BUS_SPIN_LOCK(&sc->sc_bus);


 uss820dci_xfer_do_fifo(xfer);

 if (uss820dci_xfer_do_complete(xfer) == 0) {





  uss820dci_intr_set(xfer, 1);


  usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


  if (xfer->timeout != 0) {
   usbd_transfer_timeout_ms(xfer,
       &uss820dci_timeout, xfer->timeout);
  }
 }
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
