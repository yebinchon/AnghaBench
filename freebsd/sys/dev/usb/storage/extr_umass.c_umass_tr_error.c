
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
struct usb_xfer {int dummy; } ;
struct umass_softc {int dummy; } ;


 int DPRINTF (struct umass_softc*,int ,char*,int ) ;
 int UDMASS_GEN ;
 scalar_t__ USB_ERR_CANCELLED ;
 int umass_cancel_ccb (struct umass_softc*) ;
 int usbd_errstr (scalar_t__) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umass_tr_error(struct usb_xfer *xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);

 if (error != USB_ERR_CANCELLED) {

  DPRINTF(sc, UDMASS_GEN, "transfer error, %s -> "
      "reset\n", usbd_errstr(error));
 }
 umass_cancel_ccb(sc);
}
