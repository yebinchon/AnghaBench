
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int* data; int bNotification; int bmRequestType; int wLength; } ;
struct ucom_softc {size_t sc_subunit; struct u3g_softc* sc_parent; } ;
struct u3g_softc {int * sc_msr; int * sc_lsr; } ;


 int DPRINTF (char*,int,...) ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UCDC_NOTIFICATION ;
 int UCDC_N_SERIAL_DCD ;
 int UCDC_N_SERIAL_DSR ;
 int UCDC_N_SERIAL_RI ;
 int UCDC_N_SERIAL_STATE ;
 int UGETW (int ) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (struct ucom_softc*) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct usb_cdc_notification*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ucom_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
u3g_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ucom_softc *ucom = usbd_xfer_softc(xfer);
 struct u3g_softc *sc = ucom->sc_parent;
 struct usb_page_cache *pc;
 struct usb_cdc_notification pkt;
 int actlen;
 uint16_t wLen;
 uint8_t mstatus;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < 8) {
   DPRINTF("message too short (expected 8, received %d)\n", actlen);
   goto tr_setup;
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &pkt, actlen);

  wLen = UGETW(pkt.wLength);
  if (wLen < 2) {
   DPRINTF("message too short (expected 2 data bytes, received %d)\n", wLen);
   goto tr_setup;
  }

  if (pkt.bmRequestType == UCDC_NOTIFICATION
      && pkt.bNotification == UCDC_N_SERIAL_STATE) {




   DPRINTF("notify bytes = 0x%02x, 0x%02x\n",
       pkt.data[0], pkt.data[1]);


   sc->sc_lsr[ucom->sc_subunit] = 0;
   sc->sc_msr[ucom->sc_subunit] = 0;

   mstatus = pkt.data[0];

   if (mstatus & UCDC_N_SERIAL_RI)
    sc->sc_msr[ucom->sc_subunit] |= SER_RI;
   if (mstatus & UCDC_N_SERIAL_DSR)
    sc->sc_msr[ucom->sc_subunit] |= SER_DSR;
   if (mstatus & UCDC_N_SERIAL_DCD)
    sc->sc_msr[ucom->sc_subunit] |= SER_DCD;
   ucom_status_change(ucom);
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
