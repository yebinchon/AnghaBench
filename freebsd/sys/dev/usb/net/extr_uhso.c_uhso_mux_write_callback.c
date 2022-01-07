
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_search {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
struct uhso_tty {size_t ht_muxport; } ;
struct uhso_softc {int * sc_ucom; } ;
typedef int req ;


 int UCDC_SEND_ENCAPSULATED_COMMAND ;
 int UHSO_DPRINTF (int,char*,int,...) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETW (int ,int) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int memset (struct usb_device_request*,int ,int) ;
 int ucom_get_data (int *,struct usb_page_cache*,int ,int,int*) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_errstr (int ) ;
 int usbd_get_page (struct usb_page_cache*,int ,struct usb_page_search*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 struct uhso_tty* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhso_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uhso_mux_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhso_softc *sc = usbd_xfer_softc(xfer);
 struct uhso_tty *ht;
 struct usb_page_cache *pc;
 struct usb_device_request req;
 int actlen;
 struct usb_page_search res;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 ht = usbd_xfer_get_priv(xfer);
 UHSO_DPRINTF(3, "status=%d, using mux port %d\n",
     USB_GET_STATE(xfer), ht->ht_muxport);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  UHSO_DPRINTF(3, "wrote %zd data bytes to muxport %d\n",
      actlen - sizeof(struct usb_device_request) ,
      ht->ht_muxport);

 case 129:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 1);
  if (ucom_get_data(&sc->sc_ucom[ht->ht_muxport], pc,
      0, 32, &actlen)) {

   usbd_get_page(pc, 0, &res);

   memset(&req, 0, sizeof(struct usb_device_request));
   req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
   req.bRequest = UCDC_SEND_ENCAPSULATED_COMMAND;
   USETW(req.wValue, 0);
   USETW(req.wIndex, ht->ht_muxport);
   USETW(req.wLength, actlen);

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &req, sizeof(req));

   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 1, actlen);
   usbd_xfer_set_frames(xfer, 2);

   UHSO_DPRINTF(3, "Prepared %d bytes for transmit "
       "on muxport %d\n", actlen, ht->ht_muxport);

   usbd_transfer_submit(xfer);
  }
  break;
 default:
  UHSO_DPRINTF(0, "error: %s\n", usbd_errstr(error));
  if (error == USB_ERR_CANCELLED)
   break;
  usbd_xfer_set_stall(xfer);
  goto tr_setup;
 }
}
