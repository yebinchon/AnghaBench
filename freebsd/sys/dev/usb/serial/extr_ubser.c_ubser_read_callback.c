
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubser_softc {scalar_t__ sc_ucom; scalar_t__ sc_numser; } ;


 int DPRINTF (char*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_put_data (scalar_t__,struct usb_page_cache*,int,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,scalar_t__*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ubser_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ubser_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubser_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[1];
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < 1) {
   DPRINTF("invalid actlen=0!\n");
   goto tr_setup;
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, buf, 1);

  if (buf[0] >= sc->sc_numser) {
   DPRINTF("invalid serial number!\n");
   goto tr_setup;
  }
  ucom_put_data(sc->sc_ucom + buf[0], pc, 1, actlen - 1);

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;

 }
}
