
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_xfer {scalar_t__ timeout; TYPE_1__* xroot; struct dwc_otg_td* td_transfer_cache; } ;
struct dwc_otg_td {scalar_t__ ep_type; int hcchar; } ;
struct TYPE_5__ {scalar_t__ status_device_mode; } ;
struct dwc_otg_softc {int sc_bus; TYPE_2__ sc_flags; } ;
struct TYPE_6__ {int intr_q; } ;
struct TYPE_4__ {TYPE_3__* bus; } ;


 int DPRINTFN (int,char*) ;
 struct dwc_otg_softc* DWC_OTG_BUS2SC (TYPE_3__*) ;
 int HCCHAR_EPDIR_IN ;
 scalar_t__ UE_ISOCHRONOUS ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int dwc_otg_enable_sof_irq (struct dwc_otg_softc*) ;
 int dwc_otg_timeout ;
 scalar_t__ dwc_otg_xfer_do_complete_locked (struct dwc_otg_softc*,struct usb_xfer*) ;
 int dwc_otg_xfer_do_fifo (struct dwc_otg_softc*,struct usb_xfer*) ;
 int usbd_transfer_enqueue (int *,struct usb_xfer*) ;
 int usbd_transfer_timeout_ms (struct usb_xfer*,int *,scalar_t__) ;

__attribute__((used)) static void
dwc_otg_start_standard_chain(struct usb_xfer *xfer)
{
 struct dwc_otg_softc *sc = DWC_OTG_BUS2SC(xfer->xroot->bus);

 DPRINTFN(9, "\n");






 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 if (sc->sc_flags.status_device_mode != 0) {
  dwc_otg_xfer_do_fifo(sc, xfer);
  if (dwc_otg_xfer_do_complete_locked(sc, xfer))
   goto done;
 } else {
  struct dwc_otg_td *td = xfer->td_transfer_cache;
  if (td->ep_type == UE_ISOCHRONOUS &&
      (td->hcchar & HCCHAR_EPDIR_IN) == 0) {





   dwc_otg_xfer_do_fifo(sc, xfer);
   if (dwc_otg_xfer_do_complete_locked(sc, xfer))
    goto done;
  }
 }


 usbd_transfer_enqueue(&xfer->xroot->bus->intr_q, xfer);


 if (xfer->timeout != 0) {
  usbd_transfer_timeout_ms(xfer,
      &dwc_otg_timeout, xfer->timeout);
 }

 if (sc->sc_flags.status_device_mode != 0)
  goto done;


 dwc_otg_enable_sof_irq(sc);
done:
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
