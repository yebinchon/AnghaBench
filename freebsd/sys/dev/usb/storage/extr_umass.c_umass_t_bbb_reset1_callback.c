
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int * wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct umass_softc {int sc_iface_no; } ;
typedef int req ;


 int DPRINTF (struct umass_softc*,int ,char*) ;
 int UDMASS_BBB ;
 int UMASS_T_BBB_RESET2 ;
 int UR_BBB_RESET ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int ) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int umass_tr_error (struct usb_xfer*,int ) ;
 int umass_transfer_start (struct umass_softc*,int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umass_t_bbb_reset1_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);
 struct usb_device_request req;
 struct usb_page_cache *pc;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  umass_transfer_start(sc, UMASS_T_BBB_RESET2);
  return;

 case 129:
  DPRINTF(sc, UDMASS_BBB, "BBB reset!\n");

  req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
  req.bRequest = UR_BBB_RESET;
  USETW(req.wValue, 0);
  req.wIndex[0] = sc->sc_iface_no;
  req.wIndex[1] = 0;
  USETW(req.wLength, 0);

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_in(pc, 0, &req, sizeof(req));

  usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
  usbd_xfer_set_frames(xfer, 1);
  usbd_transfer_submit(xfer);
  return;

 default:
  umass_tr_error(xfer, error);
  return;
 }
}
