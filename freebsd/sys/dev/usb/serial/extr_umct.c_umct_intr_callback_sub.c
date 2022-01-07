
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct umct_softc {int sc_lsr; int sc_ucom; int sc_msr; } ;
typedef int buf ;


 int DPRINTF (char*) ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UMCT_MSR_CD ;
 int UMCT_MSR_CTS ;
 int UMCT_MSR_RI ;
 int UMCT_MSR_RTS ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct umct_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
umct_intr_callback_sub(struct usb_xfer *xfer, usb_error_t error)
{
 struct umct_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[2];
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < 2) {
   DPRINTF("too short message\n");
   goto tr_setup;
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, buf, sizeof(buf));





  sc->sc_msr = 0;
  if (buf[0] & UMCT_MSR_CTS)
   sc->sc_msr |= SER_CTS;
  if (buf[0] & UMCT_MSR_CD)
   sc->sc_msr |= SER_DCD;
  if (buf[0] & UMCT_MSR_RI)
   sc->sc_msr |= SER_RI;
  if (buf[0] & UMCT_MSR_RTS)
   sc->sc_msr |= SER_DSR;
  sc->sc_lsr = buf[1];

  ucom_status_change(&sc->sc_ucom);

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
