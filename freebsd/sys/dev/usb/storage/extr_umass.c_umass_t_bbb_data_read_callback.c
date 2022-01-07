
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int data_rem; int data_ptr; int actlen; int data_timeout; } ;
struct umass_softc {TYPE_1__ sc_transfer; } ;


 int DPRINTF (struct umass_softc*,int ,char*,int,int) ;
 int UDMASS_BBB ;
 int UMASS_T_BBB_DATA_RD_CS ;
 int UMASS_T_BBB_STATUS ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int umass_tr_error (struct usb_xfer*,int ) ;
 int umass_transfer_start (struct umass_softc*,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int,int) ;
 int usbd_xfer_set_timeout (struct usb_xfer*,int ) ;
 struct umass_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;

__attribute__((used)) static void
umass_t_bbb_data_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umass_softc *sc = usbd_xfer_softc(xfer);
 uint32_t max_bulk = usbd_xfer_max_len(xfer);
 int actlen, sumlen;

 usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  sc->sc_transfer.data_rem -= actlen;
  sc->sc_transfer.data_ptr += actlen;
  sc->sc_transfer.actlen += actlen;

  if (actlen < sumlen) {

   sc->sc_transfer.data_rem = 0;
  }
 case 129:
  DPRINTF(sc, UDMASS_BBB, "max_bulk=%d, data_rem=%d\n",
      max_bulk, sc->sc_transfer.data_rem);

  if (sc->sc_transfer.data_rem == 0) {
   umass_transfer_start(sc, UMASS_T_BBB_STATUS);
   return;
  }
  if (max_bulk > sc->sc_transfer.data_rem) {
   max_bulk = sc->sc_transfer.data_rem;
  }
  usbd_xfer_set_timeout(xfer, sc->sc_transfer.data_timeout);

  usbd_xfer_set_frame_data(xfer, 0, sc->sc_transfer.data_ptr,
      max_bulk);

  usbd_transfer_submit(xfer);
  return;

 default:
  if (error == USB_ERR_CANCELLED) {
   umass_tr_error(xfer, error);
  } else {
   umass_transfer_start(sc, UMASS_T_BBB_DATA_RD_CS);
  }
  return;
 }
}
