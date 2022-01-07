
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int * fp; } ;
struct uhid_softc {TYPE_1__ sc_fifo; } ;


 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_TX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_fifo_get_data (int ,struct usb_page_cache*,int ,int ,int*,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhid_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uhid_intr_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhid_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 int actlen;

 switch (USB_GET_STATE(xfer)) {
 case 128:
 case 129:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 0);
  if (usb_fifo_get_data(sc->sc_fifo.fp[USB_FIFO_TX], pc,
      0, usbd_xfer_max_len(xfer), &actlen, 0)) {
   usbd_xfer_set_frame_len(xfer, 0, actlen);
   usbd_transfer_submit(xfer);
  }
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}
