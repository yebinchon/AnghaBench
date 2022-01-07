
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uhso_tty {size_t ht_muxport; int ht_open; } ;
struct uhso_softc {int * sc_ucom; int * sc_xfer; } ;
typedef int req ;


 int UCDC_GET_ENCAPSULATED_RESPONSE ;
 int UHSO_DPRINTF (int,char*,...) ;
 size_t UHSO_MUX_ENDPT_INTR ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int) ;
 int UT_READ_CLASS_INTERFACE ;
 int memset (struct usb_device_request*,int ,int) ;
 int ucom_put_data (int *,struct usb_page_cache*,int ,int) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_frame_len (struct usb_xfer*,int) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 struct uhso_tty* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhso_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uhso_mux_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhso_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 struct usb_device_request req;
 struct uhso_tty *ht;
 int actlen, len;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 UHSO_DPRINTF(3, "status %d\n", USB_GET_STATE(xfer));

 ht = usbd_xfer_get_priv(xfer);
 UHSO_DPRINTF(3, "ht=%p open=%d\n", ht, ht->ht_open);

 switch (USB_GET_STATE(xfer)) {
 case 128:

  pc = usbd_xfer_get_frame(xfer, 1);
  len = usbd_xfer_frame_len(xfer, 1);

  UHSO_DPRINTF(3, "got %d bytes on mux port %d\n", len,
      ht->ht_muxport);
  if (len <= 0) {
   usbd_transfer_start(sc->sc_xfer[UHSO_MUX_ENDPT_INTR]);
   break;
  }


  if (ht->ht_open)
   ucom_put_data(&sc->sc_ucom[ht->ht_muxport], pc, 0, len);

 case 129:
tr_setup:
  memset(&req, 0, sizeof(struct usb_device_request));
  req.bmRequestType = UT_READ_CLASS_INTERFACE;
  req.bRequest = UCDC_GET_ENCAPSULATED_RESPONSE;
  USETW(req.wValue, 0);
  USETW(req.wIndex, ht->ht_muxport);
  USETW(req.wLength, 1024);

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_in(pc, 0, &req, sizeof(req));

  usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
  usbd_xfer_set_frame_len(xfer, 1, 1024);
  usbd_xfer_set_frames(xfer, 2);
  usbd_transfer_submit(xfer);
  break;
 default:
  UHSO_DPRINTF(0, "error: %s\n", usbd_errstr(error));
  if (error == USB_ERR_CANCELLED)
   break;
  usbd_xfer_set_stall(xfer);
  goto tr_setup;
 }
}
