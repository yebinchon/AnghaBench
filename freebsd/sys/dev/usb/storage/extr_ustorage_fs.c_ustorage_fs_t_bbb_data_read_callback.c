
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct TYPE_2__ {int data_ptr; int data_rem; int offset; int data_error; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; int sc_dma_ptr; } ;
struct usb_xfer {int dummy; } ;


 int DPRINTF (char*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USTORAGE_FS_T_BBB_STATUS ;
 int memcpy (int,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_is_stalled (struct usb_xfer*) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,int ,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ustorage_fs_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;
 int ustorage_fs_transfer_start (struct ustorage_fs_softc*,int ) ;

__attribute__((used)) static void
ustorage_fs_t_bbb_data_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ustorage_fs_softc *sc = usbd_xfer_softc(xfer);
 uint32_t max_bulk = usbd_xfer_max_len(xfer);
 int actlen, sumlen;

 usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));

 DPRINTF("\n");

 switch (USB_GET_STATE(xfer)) {
 case 128:

  memcpy(sc->sc_transfer.data_ptr, sc->sc_dma_ptr, actlen);

  sc->sc_transfer.data_rem -= actlen;
  sc->sc_transfer.data_ptr += actlen;
  sc->sc_transfer.offset += actlen;

  if (actlen != sumlen || sc->sc_transfer.data_rem == 0) {

   ustorage_fs_transfer_start(sc,
       USTORAGE_FS_T_BBB_STATUS);
   break;
  }


 case 129:
tr_setup:
  if (max_bulk > sc->sc_transfer.data_rem) {
   max_bulk = sc->sc_transfer.data_rem;
  }
  if (sc->sc_transfer.data_error) {
   sc->sc_transfer.data_error = 0;
   usbd_xfer_set_stall(xfer);
  }

  usbd_xfer_set_frame_data(xfer, 0, sc->sc_dma_ptr, max_bulk);
  usbd_transfer_submit(xfer);
  break;

 default:
  if (error == USB_ERR_CANCELLED) {
   break;
  }

  if (!usbd_xfer_is_stalled(xfer))
   sc->sc_transfer.data_error = 1;


  goto tr_setup;
 }
}
