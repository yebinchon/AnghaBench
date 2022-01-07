
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int bmRequestType; int bNotification; int* data; int wLength; } ;
struct umodem_softc {int sc_ucom; int sc_msr; int sc_lsr; } ;
typedef int pkt ;


 int DPRINTF (char*,...) ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UCDC_NOTIFICATION ;
 int UCDC_N_SERIAL_DCD ;
 int UCDC_N_SERIAL_DSR ;
 int UCDC_N_SERIAL_RI ;

 int UGETW (int ) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct usb_cdc_notification*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct umodem_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
umodem_intr_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct usb_cdc_notification pkt;
 struct umodem_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint16_t wLen;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  if (actlen < 8) {
   DPRINTF("received short packet, "
       "%d bytes\n", actlen);
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
  if (pkt.bmRequestType != UCDC_NOTIFICATION) {
   DPRINTF("unknown message type, "
       "0x%02x, on notify pipe!\n",
       pkt.bmRequestType);
   goto tr_setup;
  }
  switch (pkt.bNotification) {
  case 130:




   if (actlen < 2) {
    DPRINTF("invalid notification "
        "length, %d bytes!\n", actlen);
    break;
   }
   DPRINTF("notify bytes = %02x%02x\n",
       pkt.data[0],
       pkt.data[1]);


   sc->sc_lsr = 0;
   sc->sc_msr = 0;

   if (pkt.data[0] & UCDC_N_SERIAL_RI) {
    sc->sc_msr |= SER_RI;
   }
   if (pkt.data[0] & UCDC_N_SERIAL_DSR) {
    sc->sc_msr |= SER_DSR;
   }
   if (pkt.data[0] & UCDC_N_SERIAL_DCD) {
    sc->sc_msr |= SER_DCD;
   }
   ucom_status_change(&sc->sc_ucom);
   break;

  default:
   DPRINTF("unknown notify message: 0x%02x\n",
       pkt.bNotification);
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
