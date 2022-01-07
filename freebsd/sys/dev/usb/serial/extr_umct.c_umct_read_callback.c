
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct umct_softc {scalar_t__ sc_swap_cb; } ;


 int umct_intr_callback_sub (struct usb_xfer*,int ) ;
 int umct_read_callback_sub (struct usb_xfer*,int ) ;
 struct umct_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umct_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umct_softc *sc = usbd_xfer_softc(xfer);

 if (sc->sc_swap_cb)
  umct_intr_callback_sub(xfer, error);
 else
  umct_read_callback_sub(xfer, error);
}
