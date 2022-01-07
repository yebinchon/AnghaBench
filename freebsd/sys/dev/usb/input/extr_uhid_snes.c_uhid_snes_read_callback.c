
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct uhid_snes_softc {int sc_zero_length_packets; struct usb_fifo** sc_fifo_open; } ;


 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_RX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_fifo_put_bytes_max (struct usb_fifo*) ;
 int usb_fifo_put_data (struct usb_fifo*,struct usb_page_cache*,int ,int,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_interval (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhid_snes_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uhid_snes_read_callback(struct usb_xfer *transfer, usb_error_t error)
{
 struct uhid_snes_softc *sc = usbd_xfer_softc(transfer);
 struct usb_fifo *fifo = sc->sc_fifo_open[USB_FIFO_RX];
 struct usb_page_cache *pc;
 int actual, max;

 usbd_xfer_status(transfer, &actual, ((void*)0), ((void*)0), ((void*)0));
 if (fifo == ((void*)0))
  return;

 switch (USB_GET_STATE(transfer)) {
 case 128:
  if (actual == 0) {
   if (sc->sc_zero_length_packets == 4)

    usbd_xfer_set_interval(transfer, 500);
   else
    sc->sc_zero_length_packets++;

  } else {

   usbd_xfer_set_interval(transfer, 0);
   sc->sc_zero_length_packets = 0;
  }
  pc = usbd_xfer_get_frame(transfer, 0);
  usb_fifo_put_data(fifo, pc, 0, actual, 1);

 setup:
 case 129:
  if (usb_fifo_put_bytes_max(fifo) != 0) {
   max = usbd_xfer_max_len(transfer);
   usbd_xfer_set_frame_len(transfer, 0, max);
   usbd_transfer_submit(transfer);
  }
  break;

 default:

  usbd_xfer_set_interval(transfer, 0);
  sc->sc_zero_length_packets = 0;

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(transfer);
   goto setup;
  }
  break;
 }
}
