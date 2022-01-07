
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uplcom_softc {int sc_ucom; int sc_msr; int sc_lsr; } ;
typedef int buf ;


 int DPRINTF (char*,int) ;
 int RSAQ_STATUS_BREAK_ERROR ;
 int RSAQ_STATUS_CTS ;
 int RSAQ_STATUS_DCD ;
 int RSAQ_STATUS_DSR ;
 int RSAQ_STATUS_FRAME_ERROR ;
 int RSAQ_STATUS_OVERRUN_ERROR ;
 int RSAQ_STATUS_PARITY_ERROR ;
 int RSAQ_STATUS_RING ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int ULSR_BI ;
 int ULSR_FE ;
 int ULSR_OE ;
 int ULSR_PE ;
 size_t UPLCOM_STATE_INDEX ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uplcom_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uplcom_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uplcom_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[9];
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  DPRINTF("actlen = %u\n", actlen);

  if (actlen >= 9) {

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_out(pc, 0, buf, sizeof(buf));

   DPRINTF("status = 0x%02x\n", buf[UPLCOM_STATE_INDEX]);

   sc->sc_lsr = 0;
   sc->sc_msr = 0;

   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_CTS) {
    sc->sc_msr |= SER_CTS;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_OVERRUN_ERROR) {
    sc->sc_lsr |= ULSR_OE;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_PARITY_ERROR) {
    sc->sc_lsr |= ULSR_PE;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_FRAME_ERROR) {
    sc->sc_lsr |= ULSR_FE;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_RING) {
    sc->sc_msr |= SER_RI;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_BREAK_ERROR) {
    sc->sc_lsr |= ULSR_BI;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_DSR) {
    sc->sc_msr |= SER_DSR;
   }
   if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_DCD) {
    sc->sc_msr |= SER_DCD;
   }
   ucom_status_change(&sc->sc_ucom);
  }
 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
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
