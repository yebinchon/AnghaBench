
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct bbb_transfer {int status_try; TYPE_1__* csw; } ;
struct bbb_csw {int dummy; } ;
struct TYPE_2__ {int bCSWStatus; } ;


 int CSWSTATUS_GOOD ;
 int DPRINTF (char*,int ,int) ;
 int ERR_CSW_FAILED ;
 int ST_DATA_RD_CS ;
 int USB_ERR_CANCELLED ;
 int USB_ERR_SHORT_XFER ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int bbb_done (struct bbb_transfer*,int ) ;
 int bbb_transfer_start (struct bbb_transfer*,int ) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 struct bbb_transfer* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int*,int *,int *) ;

__attribute__((used)) static void
bbb_status_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct bbb_transfer *sc = usbd_xfer_softc(xfer);
 int actlen;
 int sumlen;

 usbd_xfer_status(xfer, &actlen, &sumlen, ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:



  if (actlen < (int)sizeof(struct bbb_csw)) {
   bbb_done(sc, USB_ERR_SHORT_XFER);
  } else if (sc->csw->bCSWStatus == CSWSTATUS_GOOD) {
   bbb_done(sc, 0);
  } else {
   bbb_done(sc, ERR_CSW_FAILED);
  }
  break;

 case 129:
  usbd_xfer_set_frame_len(xfer, 0,
      sizeof(struct bbb_csw));
  usbd_transfer_submit(xfer);
  break;

 default:
  DPRINTF("Failed to read CSW: %s, try %d\n",
      usbd_errstr(error), sc->status_try);

  if (error == USB_ERR_CANCELLED || sc->status_try) {
   bbb_done(sc, error);
  } else {
   sc->status_try = 1;
   bbb_transfer_start(sc, ST_DATA_RD_CS);
  }
  break;
 }
}
