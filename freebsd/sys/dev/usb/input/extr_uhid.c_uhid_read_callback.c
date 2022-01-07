
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int dummy; } ;
struct TYPE_2__ {int * fp; } ;
struct uhid_softc {int sc_isize; TYPE_1__ sc_fifo; int sc_iid; int sc_iface_no; } ;
typedef int req ;


 int UHID_INPUT_REPORT ;
 size_t USB_FIFO_RX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int uhid_fill_get_report (struct usb_device_request*,int ,int ,int ,int) ;
 int usb_fifo_put_bytes_max (int ) ;
 int usb_fifo_put_data (int ,struct usb_page_cache*,int,int,int) ;
 int usb_fifo_put_data_error (int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct uhid_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uhid_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhid_softc *sc = usbd_xfer_softc(xfer);
 struct usb_device_request req;
 struct usb_page_cache *pc;

 pc = usbd_xfer_get_frame(xfer, 0);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  usb_fifo_put_data(sc->sc_fifo.fp[USB_FIFO_RX], pc, sizeof(req),
      sc->sc_isize, 1);
  return;

 case 129:

  if (usb_fifo_put_bytes_max(sc->sc_fifo.fp[USB_FIFO_RX]) > 0) {

   uhid_fill_get_report
       (&req, sc->sc_iface_no, UHID_INPUT_REPORT,
       sc->sc_iid, sc->sc_isize);

   usbd_copy_in(pc, 0, &req, sizeof(req));

   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 1, sc->sc_isize);
   usbd_xfer_set_frames(xfer, sc->sc_isize ? 2 : 1);
   usbd_transfer_submit(xfer);
  }
  return;

 default:

  usb_fifo_put_data_error(sc->sc_fifo.fp[USB_FIFO_RX]);
  return;
 }
}
