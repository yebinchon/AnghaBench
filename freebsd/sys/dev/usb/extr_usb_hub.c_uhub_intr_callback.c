
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int error; } ;
struct uhub_softc {TYPE_1__* sc_udev; } ;
struct TYPE_2__ {int bus; } ;


 int DPRINTFN (int,char*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_needs_explore (int ,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhub_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uhub_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhub_softc *sc = usbd_xfer_softc(xfer);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(2, "\n");






  usb_needs_explore(sc->sc_udev->bus, 0);

 case 129:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;

 default:
  if (xfer->error != USB_ERR_CANCELLED) {





   usbd_xfer_set_stall(xfer);
   usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
   usbd_transfer_submit(xfer);
  }
  break;
 }
}
