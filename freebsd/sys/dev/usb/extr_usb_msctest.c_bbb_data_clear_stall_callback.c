
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct bbb_transfer {int * xfer; } ;


 int USB_ERR_STALLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int bbb_done (struct bbb_transfer*,int ) ;
 int bbb_transfer_start (struct bbb_transfer*,size_t) ;
 scalar_t__ usbd_clear_stall_callback (struct usb_xfer*,int ) ;
 struct bbb_transfer* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
bbb_data_clear_stall_callback(struct usb_xfer *xfer,
    uint8_t next_xfer, uint8_t stall_xfer)
{
 struct bbb_transfer *sc = usbd_xfer_softc(xfer);

 if (usbd_clear_stall_callback(xfer, sc->xfer[stall_xfer])) {
  switch (USB_GET_STATE(xfer)) {
  case 129:
  case 128:
   bbb_transfer_start(sc, next_xfer);
   break;
  default:
   bbb_done(sc, USB_ERR_STALLED);
   break;
  }
 }
}
