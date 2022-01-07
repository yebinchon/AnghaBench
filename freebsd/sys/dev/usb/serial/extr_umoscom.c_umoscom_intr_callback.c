
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct umoscom_softc {int sc_ucom; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int ,char*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_status_change (int *) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct umoscom_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
umoscom_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umoscom_softc *sc = usbd_xfer_softc(xfer);
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < 2) {
   DPRINTF("too short message\n");
   goto tr_setup;
  }
  ucom_status_change(&sc->sc_ucom);

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  return;

 default:
  if (error != USB_ERR_CANCELLED) {
   DPRINTFN(0, "transfer failed\n");

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}
