
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubsa_softc {int sc_lsr; int sc_ucom; int sc_msr; } ;
typedef int buf ;


 int DPRINTF (char*,int,...) ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UBSA_MSR_CTS ;
 int UBSA_MSR_DCD ;
 int UBSA_MSR_DSR ;
 int UBSA_MSR_RI ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ubsa_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ubsa_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubsa_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[4];
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  if (actlen >= (int)sizeof(buf)) {
   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_out(pc, 0, buf, sizeof(buf));





   sc->sc_msr = 0;
   if (buf[3] & UBSA_MSR_CTS)
    sc->sc_msr |= SER_CTS;
   if (buf[3] & UBSA_MSR_DCD)
    sc->sc_msr |= SER_DCD;
   if (buf[3] & UBSA_MSR_RI)
    sc->sc_msr |= SER_RI;
   if (buf[3] & UBSA_MSR_DSR)
    sc->sc_msr |= SER_DSR;
   sc->sc_lsr = buf[2];

   DPRINTF("lsr = 0x%02x, msr = 0x%02x\n",
       sc->sc_lsr, sc->sc_msr);

   ucom_status_change(&sc->sc_ucom);
  } else {
   DPRINTF("ignoring short packet, %d bytes\n", actlen);
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
