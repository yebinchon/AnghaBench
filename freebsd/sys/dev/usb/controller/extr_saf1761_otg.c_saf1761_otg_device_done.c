
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
struct TYPE_3__ {scalar_t__ usb_mode; } ;
struct usb_xfer {struct saf1761_otg_td* td_transfer_cache; TYPE_1__ flags_int; int endpoint; TYPE_2__* xroot; } ;
struct saf1761_otg_td {int dummy; } ;
struct saf1761_otg_softc {int sc_bus; } ;
struct TYPE_4__ {int bus; } ;


 int DPRINTFN (int,char*,struct usb_xfer*,int ,int ) ;
 int MA_OWNED ;
 struct saf1761_otg_softc* SAF1761_OTG_BUS2SC (int ) ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 scalar_t__ USB_MODE_DEVICE ;
 int saf1761_host_channel_free (struct saf1761_otg_softc*,struct saf1761_otg_td*) ;
 int saf1761_otg_intr_set (struct usb_xfer*,int ) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
saf1761_otg_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct saf1761_otg_softc *sc = SAF1761_OTG_BUS2SC(xfer->xroot->bus);

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 DPRINTFN(2, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);

 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 if (xfer->flags_int.usb_mode == USB_MODE_DEVICE) {
  saf1761_otg_intr_set(xfer, 0);
 } else {
  struct saf1761_otg_td *td;

  td = xfer->td_transfer_cache;

  if (td != ((void*)0))
   saf1761_host_channel_free(sc, td);
 }


 usbd_transfer_done(xfer, error);

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
