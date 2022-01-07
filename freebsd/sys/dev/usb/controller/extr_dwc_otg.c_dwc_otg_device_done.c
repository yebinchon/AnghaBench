
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_4__ {scalar_t__ usb_mode; } ;
struct usb_xfer {struct dwc_otg_td* td_transfer_cache; TYPE_2__ flags_int; int endpoint; TYPE_1__* xroot; } ;
struct dwc_otg_td {int dummy; } ;
struct dwc_otg_softc {int sc_bus; } ;
struct TYPE_3__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ,int ) ;
 struct dwc_otg_softc* DWC_OTG_BUS2SC (int ) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 scalar_t__ USB_MODE_DEVICE ;
 int dwc_otg_host_channel_free (struct dwc_otg_softc*,struct dwc_otg_td*) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
dwc_otg_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct dwc_otg_softc *sc = DWC_OTG_BUS2SC(xfer->xroot->bus);

 DPRINTFN(9, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);

 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {

 } else {
  struct dwc_otg_td *td;

  td = xfer->td_transfer_cache;
   if (td != ((void*)0))
   dwc_otg_host_channel_free(sc, td);
 }

 usbd_transfer_done(xfer, error);

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
