
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct TYPE_2__ {struct usb_fifo** fp; } ;
struct ubtbcmfw_softc {TYPE_1__ sc_fifo; } ;


 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_RX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_fifo_put_bytes_max (struct usb_fifo*) ;
 int usb_fifo_put_data (struct usb_fifo*,struct usb_page_cache*,int ,int,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ubtbcmfw_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ubtbcmfw_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubtbcmfw_softc *sc = usbd_xfer_softc(xfer);
 struct usb_fifo *fifo = sc->sc_fifo.fp[USB_FIFO_RX];
 struct usb_page_cache *pc;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  pc = usbd_xfer_get_frame(xfer, 0);
  usb_fifo_put_data(fifo, pc, 0, actlen, 1);


 case 129:
setup_next:
  if (usb_fifo_put_bytes_max(fifo) > 0) {
   usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
   usbd_transfer_submit(xfer);
  }
  break;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto setup_next;
  }
  break;
 }
}
