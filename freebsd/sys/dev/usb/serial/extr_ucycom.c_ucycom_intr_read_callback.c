
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucycom_softc {int sc_ist; int sc_ilen; int sc_ucom; int sc_model; } ;


 int DPRINTFN (int ,char*) ;


 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_put_data (int *,struct usb_page_cache*,int,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ucycom_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ucycom_intr_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ucycom_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[2];
 uint32_t offset;
 int len;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));
 pc = usbd_xfer_get_frame(xfer, 0);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  switch (sc->sc_model) {
  case 131:
   if (actlen < 1) {
    goto tr_setup;
   }
   usbd_copy_out(pc, 0, buf, 1);

   sc->sc_ist = buf[0] & ~0x07;
   len = buf[0] & 0x07;

   actlen--;
   offset = 1;

   break;

  case 130:
   if (actlen < 2) {
    goto tr_setup;
   }
   usbd_copy_out(pc, 0, buf, 2);

   sc->sc_ist = buf[0] & ~0x07;
   len = buf[1];

   actlen -= 2;
   offset = 2;

   break;

  default:
   DPRINTFN(0, "unsupported model number\n");
   goto tr_setup;
  }

  if (len > actlen)
   len = actlen;
  if (len)
   ucom_put_data(&sc->sc_ucom, pc, offset, len);

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, sc->sc_ilen);
  usbd_transfer_submit(xfer);
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;

 }
}
