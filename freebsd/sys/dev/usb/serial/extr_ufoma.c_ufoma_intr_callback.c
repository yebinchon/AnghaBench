
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int* data; int bNotification; int bmRequestType; int wValue; int wLength; } ;
struct ufoma_softc {int sc_currentmode; int sc_num_msg; int sc_ucom; int sc_msr; int sc_lsr; int sc_nobulk; int * sc_ctrl_xfer; int sc_cv; } ;
typedef int pkt ;


 int DPRINTF (char*,...) ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UCDC_NOTIFICATION ;

 int UCDC_N_SERIAL_DCD ;
 int UCDC_N_SERIAL_DSR ;
 int UCDC_N_SERIAL_RI ;

 size_t UFOMA_CTRL_ENDPT_READ ;
 int UGETW (int ) ;
 int UMCPC_REQUEST_ACKNOWLEDGE ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int UT_READ_VENDOR_INTERFACE ;
 int cv_signal (int *) ;
 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct usb_cdc_notification*,int) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ufoma_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ufoma_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ufoma_softc *sc = usbd_xfer_softc(xfer);
 struct usb_cdc_notification pkt;
 struct usb_page_cache *pc;
 uint16_t wLen;
 uint16_t temp;
 uint8_t mstatus;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < 8) {
   DPRINTF("too short message\n");
   goto tr_setup;
  }
  if (actlen > (int)sizeof(pkt)) {
   DPRINTF("truncating message\n");
   actlen = sizeof(pkt);
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &pkt, actlen);

  actlen -= 8;

  wLen = UGETW(pkt.wLength);
  if (actlen > wLen) {
   actlen = wLen;
  }
  if ((pkt.bmRequestType == UT_READ_VENDOR_INTERFACE) &&
      (pkt.bNotification == UMCPC_REQUEST_ACKNOWLEDGE)) {
   temp = UGETW(pkt.wValue);
   sc->sc_currentmode = (temp >> 8);
   if (!(temp & 0xff)) {
    DPRINTF("Mode change failed!\n");
   }
   cv_signal(&sc->sc_cv);
  }
  if (pkt.bmRequestType != UCDC_NOTIFICATION) {
   goto tr_setup;
  }
  switch (pkt.bNotification) {
  case 131:
   if (!(sc->sc_nobulk)) {
    DPRINTF("Wrong serial state!\n");
    break;
   }
   if (sc->sc_num_msg != 0xFF) {
    sc->sc_num_msg++;
   }
   usbd_transfer_start(sc->sc_ctrl_xfer[UFOMA_CTRL_ENDPT_READ]);
   break;

  case 130:
   if (sc->sc_nobulk) {
    DPRINTF("Wrong serial state!\n");
    break;
   }




   if (actlen < 2) {
    DPRINTF("invalid notification "
        "length, %d bytes!\n", actlen);
    break;
   }
   DPRINTF("notify bytes = 0x%02x, 0x%02x\n",
       pkt.data[0], pkt.data[1]);


   sc->sc_lsr = 0;
   sc->sc_msr = 0;

   mstatus = pkt.data[0];

   if (mstatus & UCDC_N_SERIAL_RI) {
    sc->sc_msr |= SER_RI;
   }
   if (mstatus & UCDC_N_SERIAL_DSR) {
    sc->sc_msr |= SER_DSR;
   }
   if (mstatus & UCDC_N_SERIAL_DCD) {
    sc->sc_msr |= SER_DCD;
   }
   ucom_status_change(&sc->sc_ucom);
   break;

  default:
   break;
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
