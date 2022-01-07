
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_frlength_t ;
typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct bbb_transfer {int data_rem; int data_ptr; int actlen; int data_timeout; } ;


 int DPRINTF (char*,int,int) ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int bbb_done (struct bbb_transfer*,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int,int) ;
 int usbd_xfer_set_timeout (struct usb_xfer*,int ) ;
 struct bbb_transfer* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;

__attribute__((used)) static void
bbb_raw_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct bbb_transfer *sc = usbd_xfer_softc(xfer);
 usb_frlength_t max_bulk = usbd_xfer_max_len(xfer);
 int actlen, sumlen;

 usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  sc->data_rem -= actlen;
  sc->data_ptr += actlen;
  sc->actlen += actlen;

  if (actlen < sumlen) {

   sc->data_rem = 0;
  }
 case 129:
  DPRINTF("max_bulk=%d, data_rem=%d\n",
      max_bulk, sc->data_rem);

  if (sc->data_rem == 0) {
   bbb_done(sc, 0);
   break;
  }
  if (max_bulk > sc->data_rem) {
   max_bulk = sc->data_rem;
  }
  usbd_xfer_set_timeout(xfer, sc->data_timeout);
  usbd_xfer_set_frame_data(xfer, 0, sc->data_ptr, max_bulk);
  usbd_transfer_submit(xfer);
  break;

 default:
  bbb_done(sc, error);
  break;
 }
}
