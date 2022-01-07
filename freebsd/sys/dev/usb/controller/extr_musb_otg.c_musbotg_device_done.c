
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {struct musbotg_td* td_transfer_cache; TYPE_1__* xroot; int endpoint; } ;
struct musbotg_td {int channel; } ;
struct musbotg_softc {int dummy; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTFN (int,char*,...) ;
 int MA_OWNED ;
 struct musbotg_softc* MUSBOTG_BUS2SC (int ) ;
 int USB_BUS_LOCK_ASSERT (int ,int ) ;
 int musbotg_channel_free (struct musbotg_softc*,struct musbotg_td*) ;
 int usbd_transfer_done (struct usb_xfer*,int ) ;

__attribute__((used)) static void
musbotg_device_done(struct usb_xfer *xfer, usb_error_t error)
{
 struct musbotg_td *td;
 struct musbotg_softc *sc;

 USB_BUS_LOCK_ASSERT(xfer->xroot->bus, MA_OWNED);

 DPRINTFN(1, "xfer=%p, endpoint=%p, error=%d\n",
     xfer, xfer->endpoint, error);

 DPRINTFN(14, "disabled interrupts on endpoint\n");

 sc = MUSBOTG_BUS2SC(xfer->xroot->bus);
 td = xfer->td_transfer_cache;

 if (td && (td->channel != -1))
  musbotg_channel_free(sc, td);


 usbd_transfer_done(xfer, error);
}
