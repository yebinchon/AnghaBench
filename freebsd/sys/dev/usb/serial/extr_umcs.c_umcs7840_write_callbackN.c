
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef size_t uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct umcs7840_softc {struct ucom_softc* sc_ucom; } ;
struct ucom_softc {int sc_portno; } ;


 int DPRINTF (char*,int ,int) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_get_data (struct ucom_softc*,struct usb_page_cache*,int ,int ,int*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct umcs7840_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
umcs7840_write_callbackN(struct usb_xfer *xfer, usb_error_t error, uint8_t subunit)
{
 struct umcs7840_softc *sc = usbd_xfer_softc(xfer);
 struct ucom_softc *ucom = &sc->sc_ucom[subunit];
 struct usb_page_cache *pc;
 uint32_t actlen;

 DPRINTF("Port %d write, state = %d\n", ucom->sc_portno, USB_GET_STATE(xfer));

 switch (USB_GET_STATE(xfer)) {
 case 129:
 case 128:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 0);
  if (ucom_get_data(ucom, pc, 0, usbd_xfer_max_len(xfer), &actlen)) {
   DPRINTF("Port %d write, has %d bytes\n", ucom->sc_portno, actlen);
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
