
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct udbp_softc {int sc_flags; struct usb_xfer** sc_xfer; } ;


 int DPRINTF (char*) ;
 int UDBP_FLAG_READ_STALL ;
 size_t UDBP_T_RD ;
 scalar_t__ usbd_clear_stall_callback (struct usb_xfer*,struct usb_xfer*) ;
 int usbd_transfer_start (struct usb_xfer*) ;
 struct udbp_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
udbp_bulk_read_clear_stall_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct udbp_softc *sc = usbd_xfer_softc(xfer);
 struct usb_xfer *xfer_other = sc->sc_xfer[UDBP_T_RD];

 if (usbd_clear_stall_callback(xfer, xfer_other)) {
  DPRINTF("stall cleared\n");
  sc->sc_flags &= ~UDBP_FLAG_READ_STALL;
  usbd_transfer_start(xfer_other);
 }
}
