
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ustorage_fs_bbb_csw_t ;
typedef int usb_error_t ;
struct TYPE_3__ {int data_error; int data_rem; } ;
struct ustorage_fs_softc {TYPE_1__ sc_transfer; TYPE_2__* sc_csw; } ;
struct usb_xfer {int dummy; } ;
struct TYPE_4__ {int dCSWDataResidue; int dCSWSignature; } ;


 int CSWSIGNATURE ;
 int DPRINTF (char*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USETDW (int ,int ) ;
 int USTORAGE_FS_T_BBB_COMMAND ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_is_stalled (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ustorage_fs_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int ustorage_fs_transfer_start (struct ustorage_fs_softc*,int ) ;

__attribute__((used)) static void
ustorage_fs_t_bbb_status_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ustorage_fs_softc *sc = usbd_xfer_softc(xfer);

 DPRINTF("\n");

 switch (USB_GET_STATE(xfer)) {
 case 128:
  ustorage_fs_transfer_start(sc, USTORAGE_FS_T_BBB_COMMAND);
  break;

 case 129:
tr_setup:
  USETDW(sc->sc_csw->dCSWSignature, CSWSIGNATURE);
  USETDW(sc->sc_csw->dCSWDataResidue, sc->sc_transfer.data_rem);

  if (sc->sc_transfer.data_error) {
   sc->sc_transfer.data_error = 0;
   usbd_xfer_set_stall(xfer);
  }
  usbd_xfer_set_frame_len(xfer, 0,
      sizeof(ustorage_fs_bbb_csw_t));
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
