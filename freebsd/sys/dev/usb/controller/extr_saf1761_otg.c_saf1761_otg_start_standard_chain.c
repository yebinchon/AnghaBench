
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_xfer {scalar_t__ timeout; TYPE_1__* xroot; } ;
struct saf1761_otg_softc {int sc_bus; } ;
struct TYPE_4__ {int intr_q; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;


 int DPRINTFN (int,char*) ;
 struct saf1761_otg_softc* SAF1761_OTG_BUS2SC (TYPE_2__*) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int saf1761_otg_intr_set (struct usb_xfer*,int) ;
 int saf1761_otg_timeout ;
 scalar_t__ saf1761_otg_xfer_do_complete (struct saf1761_otg_softc*,struct usb_xfer*) ;
 int saf1761_otg_xfer_do_fifo (struct saf1761_otg_softc*,struct usb_xfer*) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;

__attribute__((used)) static void
saf1761_otg_start_standard_chain(struct usb_xfer *xfer)
{
 struct saf1761_otg_softc *sc = SAF1761_OTG_BUS2SC(xfer->xroot->bus);

 DPRINTFN(9, "\n");

 USB_BUS_SPIN_LOCK(&sc->sc_bus);


 saf1761_otg_xfer_do_fifo(sc, xfer);

 if (saf1761_otg_xfer_do_complete(sc, xfer) == 0) {





  saf1761_otg_intr_set(xfer, 1);


  usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


  if (xfer->timeout != 0) {
   usbd_transfer_timeout_ms(xfer,
       &saf1761_otg_timeout, xfer->timeout);
  }
 }
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
