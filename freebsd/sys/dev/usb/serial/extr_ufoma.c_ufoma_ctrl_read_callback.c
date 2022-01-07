
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int wValue; int wIndex; int bRequest; int bmRequestType; } ;
struct ufoma_softc {int sc_ctrl_iface_no; int sc_num_msg; int sc_ucom; } ;
typedef int req ;


 int DPRINTF (char*,int ) ;
 int UCDC_GET_ENCAPSULATED_RESPONSE ;
 int UFOMA_CMD_BUF_SIZE ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int) ;
 int UT_READ_CLASS_INTERFACE ;
 int ucom_put_data (int *,struct usb_page_cache*,int ,int) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_frame_len (struct usb_xfer*,int) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct ufoma_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int *,int *,int*,int*) ;

__attribute__((used)) static void
ufoma_ctrl_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ufoma_softc *sc = usbd_xfer_softc(xfer);
 struct usb_device_request req;
 struct usb_page_cache *pc0, *pc1;
 int len, aframes, nframes;

 usbd_xfer_status(xfer, ((void*)0), ((void*)0), &aframes, &nframes);

 switch (USB_GET_STATE(xfer)) {
 case 128:
tr_transferred:
  if (aframes != nframes)
   goto tr_setup;
  pc1 = usbd_xfer_get_frame(xfer, 1);
  len = usbd_xfer_frame_len(xfer, 1);
  if (len > 0)
   ucom_put_data(&sc->sc_ucom, pc1, 0, len);

 case 129:
tr_setup:
  if (sc->sc_num_msg) {
   sc->sc_num_msg--;

   req.bmRequestType = UT_READ_CLASS_INTERFACE;
   req.bRequest = UCDC_GET_ENCAPSULATED_RESPONSE;
   USETW(req.wIndex, sc->sc_ctrl_iface_no);
   USETW(req.wValue, 0);
   USETW(req.wLength, UFOMA_CMD_BUF_SIZE);

   pc0 = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc0, 0, &req, sizeof(req));

   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 1, UFOMA_CMD_BUF_SIZE);
   usbd_xfer_set_frames(xfer, 2);
   usbd_transfer_submit(xfer);
  }
  return;

 default:
  DPRINTF("error = %s\n",
      usbd_errstr(error));

  if (error == USB_ERR_CANCELLED) {
   return;
  }
  goto tr_transferred;
 }
}
