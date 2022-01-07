
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uchcom_softc {int sc_ucom; } ;


 int DPRINTF (char*,unsigned int,...) ;
 int UCHCOM_INTR_LEAST ;
 size_t UCHCOM_INTR_STAT1 ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int uchcom_convert_status (struct uchcom_softc*,int ) ;
 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int *,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uchcom_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uchcom_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uchcom_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[UCHCOM_INTR_LEAST];
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  DPRINTF("actlen = %u\n", actlen);

  if (actlen >= UCHCOM_INTR_LEAST) {
   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_out(pc, 0, buf, UCHCOM_INTR_LEAST);

   DPRINTF("data = 0x%02X 0x%02X 0x%02X 0x%02X\n",
       (unsigned)buf[0], (unsigned)buf[1],
       (unsigned)buf[2], (unsigned)buf[3]);

   uchcom_convert_status(sc, buf[UCHCOM_INTR_STAT1]);
   ucom_status_change(&sc->sc_ucom);
  }
 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
