
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int ue_udev; } ;
struct cdce_softc {TYPE_1__ sc_ue; } ;


 int DPRINTF (char*,int) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;
 int USB_MODE_HOST ;


 int usbd_get_mode (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct cdce_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
cdce_intr_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct cdce_softc *sc = usbd_xfer_softc(xfer);
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  DPRINTF("Received %d bytes\n", actlen);




 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {

   if (usbd_get_mode(sc->sc_ue.ue_udev) == USB_MODE_HOST)
    usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
