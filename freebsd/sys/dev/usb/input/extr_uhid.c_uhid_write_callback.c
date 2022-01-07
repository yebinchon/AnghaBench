
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int dummy; } ;
struct TYPE_2__ {int * fp; } ;
struct uhid_softc {int sc_osize; TYPE_1__ sc_fifo; int sc_iface_no; int sc_oid; } ;
typedef int req ;


 int UHID_BSIZE ;
 int UHID_OUTPUT_REPORT ;
 size_t USB_FIFO_TX ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int uhid_fill_set_report (struct usb_device_request*,int ,int ,int ,int) ;
 int usb_fifo_get_data (int ,struct usb_page_cache*,int ,int,int*,int) ;
 int usb_fifo_get_data_error (int ) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct usb_device_request*,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int *,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 struct uhid_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uhid_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhid_softc *sc = usbd_xfer_softc(xfer);
 struct usb_device_request req;
 struct usb_page_cache *pc;
 uint32_t size = sc->sc_osize;
 uint32_t actlen;
 uint8_t id;

 switch (USB_GET_STATE(xfer)) {
 case 128:
 case 129:

  if (sc->sc_oid) {
   pc = usbd_xfer_get_frame(xfer, 0);
   if (usb_fifo_get_data(sc->sc_fifo.fp[USB_FIFO_TX], pc,
       0, 1, &actlen, 0)) {
    if (actlen != 1) {
     goto tr_error;
    }
    usbd_copy_out(pc, 0, &id, 1);

   } else {
    return;
   }
   if (size) {
    size--;
   }
  } else {
   id = 0;
  }

  pc = usbd_xfer_get_frame(xfer, 1);
  if (usb_fifo_get_data(sc->sc_fifo.fp[USB_FIFO_TX], pc,
      0, UHID_BSIZE, &actlen, 1)) {
   if (actlen != size) {
    goto tr_error;
   }
   uhid_fill_set_report
       (&req, sc->sc_iface_no,
       UHID_OUTPUT_REPORT, id, size);

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_in(pc, 0, &req, sizeof(req));

   usbd_xfer_set_frame_len(xfer, 0, sizeof(req));
   usbd_xfer_set_frame_len(xfer, 1, size);
   usbd_xfer_set_frames(xfer, size ? 2 : 1);
   usbd_transfer_submit(xfer);
  }
  return;

 default:
tr_error:

  usb_fifo_get_data_error(sc->sc_fifo.fp[USB_FIFO_TX]);
  return;
 }
}
