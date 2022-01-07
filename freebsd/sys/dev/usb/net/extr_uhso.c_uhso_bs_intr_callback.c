
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int* data; int bNotification; int bmRequestType; int wIndex; } ;
struct uhso_softc {int * sc_ucom; int sc_msr; int sc_lsr; int sc_iface_no; } ;


 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UCDC_NOTIFICATION ;
 int UCDC_NOTIFICATION_LENGTH ;
 int UCDC_N_SERIAL_DCD ;
 int UCDC_N_SERIAL_DSR ;
 int UCDC_N_SERIAL_RI ;
 int UCDC_N_SERIAL_STATE ;
 int UGETW (int ) ;
 int UHSO_DPRINTF (int,char*,int,...) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct usb_cdc_notification*,int) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhso_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uhso_bs_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhso_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 int actlen;
 struct usb_cdc_notification cdc;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));
 UHSO_DPRINTF(3, "status %d, actlen=%d\n", USB_GET_STATE(xfer), actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < UCDC_NOTIFICATION_LENGTH) {
   UHSO_DPRINTF(0, "UCDC notification too short: %d\n", actlen);
   goto tr_setup;
  }
  else if (actlen > (int)sizeof(struct usb_cdc_notification)) {
   UHSO_DPRINTF(0, "UCDC notification too large: %d\n", actlen);
   actlen = sizeof(struct usb_cdc_notification);
  }

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &cdc, actlen);

  if (UGETW(cdc.wIndex) != sc->sc_iface_no) {
   UHSO_DPRINTF(0, "Interface mismatch, got %d expected %d\n",
       UGETW(cdc.wIndex), sc->sc_iface_no);
   goto tr_setup;
  }

  if (cdc.bmRequestType == UCDC_NOTIFICATION &&
      cdc.bNotification == UCDC_N_SERIAL_STATE) {
   UHSO_DPRINTF(2, "notify = 0x%02x\n", cdc.data[0]);

   sc->sc_msr = 0;
   sc->sc_lsr = 0;
   if (cdc.data[0] & UCDC_N_SERIAL_RI)
    sc->sc_msr |= SER_RI;
   if (cdc.data[0] & UCDC_N_SERIAL_DSR)
    sc->sc_msr |= SER_DSR;
   if (cdc.data[0] & UCDC_N_SERIAL_DCD)
    sc->sc_msr |= SER_DCD;

   ucom_status_change(&sc->sc_ucom[0]);
  }
 case 129:
tr_setup:
 default:
  if (error == USB_ERR_CANCELLED)
   break;
  usbd_xfer_set_stall(xfer);
  goto tr_setup;
 }
}
