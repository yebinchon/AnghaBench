
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int * wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uhid_snes_softc {int sc_previous_status; int sc_iface_num; } ;
typedef int req ;


 int UREQ_GET_PORT_STATUS ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int) ;
 int UT_READ_CLASS_INTERFACE ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct uhid_snes_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uhid_snes_status_callback(struct usb_xfer *transfer, usb_error_t error)
{
 struct uhid_snes_softc *sc = usbd_xfer_softc(transfer);
 struct usb_device_request req;
 struct usb_page_cache *pc;
 uint8_t current_status, new_status;

 switch (USB_GET_STATE(transfer)) {
 case 129:
  req.bmRequestType = UT_READ_CLASS_INTERFACE;
  req.bRequest = UREQ_GET_PORT_STATUS;
  USETW(req.wValue, 0);
  req.wIndex[0] = sc->sc_iface_num;
  req.wIndex[1] = 0;
  USETW(req.wLength, 1);

  pc = usbd_xfer_get_frame(transfer, 0);
  usbd_copy_in(pc, 0, &req, sizeof(req));
  usbd_xfer_set_frame_len(transfer, 0, sizeof(req));
  usbd_xfer_set_frame_len(transfer, 1, 1);
  usbd_xfer_set_frames(transfer, 2);
  usbd_transfer_submit(transfer);
  break;

 case 128:
  pc = usbd_xfer_get_frame(transfer, 1);
  usbd_copy_out(pc, 0, &current_status, 1);
  new_status = current_status & ~sc->sc_previous_status;
  sc->sc_previous_status = current_status;
  break;

 default:
  break;
 }

}
