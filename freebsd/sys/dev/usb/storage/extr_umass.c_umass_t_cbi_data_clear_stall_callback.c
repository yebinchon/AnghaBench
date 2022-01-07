
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct umass_softc {int * sc_xfer; } ;


 size_t UMASS_T_CBI_STATUS ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int umass_cbi_start_status (struct umass_softc*) ;
 int umass_tr_error (struct usb_xfer*,int ) ;
 int umass_transfer_start (struct umass_softc*,size_t) ;
 int usbd_clear_stall_callback (struct usb_xfer*,int ) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umass_t_cbi_data_clear_stall_callback(struct usb_xfer *xfer,
    uint8_t next_xfer, uint8_t stall_xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);

 switch (USB_GET_STATE(xfer)) {
 case 128:
tr_transferred:
  if (next_xfer == UMASS_T_CBI_STATUS) {
   umass_cbi_start_status(sc);
  } else {
   umass_transfer_start(sc, next_xfer);
  }
  break;

 case 129:
  if (usbd_clear_stall_callback(xfer, sc->sc_xfer[stall_xfer])) {
   goto tr_transferred;
  }
  break;

 default:
  umass_tr_error(xfer, error);
  break;
 }
}
