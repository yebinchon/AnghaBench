
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
struct uslcom_softc {int sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;


 int DPRINTF (char*,int ) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USLCOM_BULK_BUF_SIZE ;
 int ucom_get_data (int *,struct usb_page_cache*,int ,int ,int *) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uslcom_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uslcom_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uslcom_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint32_t actlen;

 switch (USB_GET_STATE(xfer)) {
 case 129:
 case 128:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 0);
  if (ucom_get_data(&sc->sc_ucom, pc, 0,
      USLCOM_BULK_BUF_SIZE, &actlen)) {

   DPRINTF("actlen = %d\n", actlen);

   usbd_xfer_set_frame_len(xfer, 0, actlen);
   usbd_transfer_submit(xfer);
  }
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}
