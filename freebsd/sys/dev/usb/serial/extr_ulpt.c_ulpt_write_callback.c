
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct ulpt_softc {struct usb_fifo** sc_fifo_open; } ;


 int DPRINTF (char*,...) ;
 int USB_ERR_CANCELLED ;
 size_t USB_FIFO_TX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usb_fifo_get_data (struct usb_fifo*,struct usb_page_cache*,int ,int,int*,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ulpt_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ulpt_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ulpt_softc *sc = usbd_xfer_softc(xfer);
 struct usb_fifo *f = sc->sc_fifo_open[USB_FIFO_TX];
 struct usb_page_cache *pc;
 int actlen, max;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 if (f == ((void*)0)) {

  DPRINTF("no FIFO\n");
  return;
 }
 DPRINTF("state=0x%x actlen=%d\n", USB_GET_STATE(xfer), actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:
 case 129:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 0);
  max = usbd_xfer_max_len(xfer);
  if (usb_fifo_get_data(f, pc, 0, max, &actlen, 0)) {
   usbd_xfer_set_frame_len(xfer, 0, actlen);
   usbd_transfer_submit(xfer);
  }
  break;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
