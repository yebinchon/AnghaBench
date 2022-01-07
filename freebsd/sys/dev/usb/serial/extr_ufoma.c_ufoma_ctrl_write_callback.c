
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int wValue; int wIndex; int bRequest; int bmRequestType; } ;
struct ufoma_softc {int sc_ctrl_iface_no; int sc_ucom; } ;
typedef int req ;


 int DPRINTF (char*,int ) ;
 int UCDC_SEND_ENCAPSULATED_COMMAND ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int ucom_get_data (int *,struct usb_page_cache*,int ,int,int *) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct ufoma_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
ufoma_ctrl_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ufoma_softc *sc = usbd_xfer_softc(xfer);
 struct usb_device_request req;
 struct usb_page_cache *pc;
 uint32_t actlen;

 switch (USB_GET_STATE(xfer)) {
 case 128:
tr_transferred:
 case 129:
  pc = usbd_xfer_get_frame(xfer, 1);
  if (ucom_get_data(&sc->sc_ucom, pc, 0, 1, &actlen)) {

   req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
   req.bRequest = UCDC_SEND_ENCAPSULATED_COMMAND;
   USETW(req.wIndex, sc->sc_ctrl_iface_no);
   USETW(req.wValue, 0);
   USETW(req.wLength, 1);

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &req, sizeof(req));

   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 1, 1);
   usbd_xfer_set_frames(xfer, 2);

   usbd_transfer_submit(xfer);
  }
  return;

 default:
  DPRINTF("error = %s\n", usbd_errstr(error));

  if (error == USB_ERR_CANCELLED) {
   return;
  }
  goto tr_transferred;
 }
}
