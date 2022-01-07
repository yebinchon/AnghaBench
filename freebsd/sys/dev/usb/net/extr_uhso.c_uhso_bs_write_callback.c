
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uhso_softc {int * sc_ucom; } ;


 int UHSO_DPRINTF (int,char*,int,...) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_get_data (int *,struct usb_page_cache*,int ,int,int*) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhso_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uhso_bs_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhso_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 UHSO_DPRINTF(3, "status %d, actlen=%d\n", USB_GET_STATE(xfer), actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:
 case 129:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 0);
  if (ucom_get_data(&sc->sc_ucom[0], pc, 0, 8192, &actlen)) {
   usbd_xfer_set_frame_len(xfer, 0, actlen);
   usbd_transfer_submit(xfer);
  }
  break;
 break;
 default:
  UHSO_DPRINTF(0, "error: %s\n", usbd_errstr(error));
  if (error == USB_ERR_CANCELLED)
   break;
  usbd_xfer_set_stall(xfer);
  goto tr_setup;
 }
}
