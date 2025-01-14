
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct uslcom_softc {int sc_msr; int sc_iface_no; int sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef int req ;
typedef int buf ;


 int DPRINTF (char*,int,...) ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int) ;
 int USLCOM_GET_MDMSTS ;
 int USLCOM_MHS_CTS ;
 int USLCOM_MHS_DCD ;
 int USLCOM_MHS_DSR ;
 int USLCOM_MHS_RI ;
 int USLCOM_READ ;
 int ucom_status_change (int *) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct uslcom_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uslcom_control_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uslcom_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 struct usb_device_request req;
 uint8_t msr = 0;
 uint8_t buf;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  pc = usbd_xfer_get_frame(xfer, 1);
  usbd_copy_out(pc, 0, &buf, sizeof(buf));
  if (buf & USLCOM_MHS_CTS)
   msr |= SER_CTS;
  if (buf & USLCOM_MHS_DSR)
   msr |= SER_DSR;
  if (buf & USLCOM_MHS_RI)
   msr |= SER_RI;
  if (buf & USLCOM_MHS_DCD)
   msr |= SER_DCD;

  if (msr != sc->sc_msr) {
   DPRINTF("status change msr=0x%02x "
       "(was 0x%02x)\n", msr, sc->sc_msr);
   sc->sc_msr = msr;
   ucom_status_change(&sc->sc_ucom);
  }
  break;

 case 129:
  req.bmRequestType = USLCOM_READ;
  req.bRequest = USLCOM_GET_MDMSTS;
  USETW(req.wValue, 0);
  USETW(req.wIndex, sc->sc_iface_no);
  USETW(req.wLength, sizeof(buf));

  usbd_xfer_set_frames(xfer, 2);
  usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
  usbd_xfer_set_frame_len(xfer, 1, sizeof(buf));

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_in(pc, 0, &req, sizeof(req));
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED)
   DPRINTF("error=%s\n", usbd_errstr(error));
  break;
 }
}
