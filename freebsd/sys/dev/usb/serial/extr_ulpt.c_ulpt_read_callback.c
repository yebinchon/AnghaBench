
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct ulpt_softc {int sc_zlps; struct usb_fifo** sc_fifo_open; } ;


 int DPRINTF (char*,...) ;
 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_RX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_fifo_put_bytes_max (struct usb_fifo*) ;
 int usb_fifo_put_data (struct usb_fifo*,struct usb_page_cache*,int ,int,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_interval (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ulpt_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ulpt_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ulpt_softc *sc = usbd_xfer_softc(xfer);
 struct usb_fifo *f = sc->sc_fifo_open[USB_FIFO_RX];
 struct usb_page_cache *pc;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 if (f == ((void*)0)) {

  DPRINTF("no FIFO\n");
  return;
 }
 DPRINTF("state=0x%x\n", USB_GET_STATE(xfer));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  if (actlen == 0) {

   if (sc->sc_zlps == 4) {

    usbd_xfer_set_interval(xfer, 500);
   } else {
    sc->sc_zlps++;
   }
  } else {


   usbd_xfer_set_interval(xfer, 0);
   sc->sc_zlps = 0;
  }

  pc = usbd_xfer_get_frame(xfer, 0);
  usb_fifo_put_data(f, pc, 0, actlen, 1);

 case 129:
tr_setup:
  if (usb_fifo_put_bytes_max(f) != 0) {
   usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
   usbd_transfer_submit(xfer);
  }
  break;

 default:

  usbd_xfer_set_interval(xfer, 0);
  sc->sc_zlps = 0;

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
