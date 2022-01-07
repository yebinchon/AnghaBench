
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct udl_softc {int sc_cv; int sc_cmd_buf_free; int sc_cmd_buf_pending; } ;
struct udl_cmd_head {int dummy; } ;
struct udl_cmd_buf {int off; int buf; } ;


 int TAILQ_CONCAT (int *,struct udl_cmd_head*,int ) ;
 struct udl_cmd_buf* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (struct udl_cmd_head*,struct udl_cmd_buf*,int ) ;
 int TAILQ_REMOVE (int *,struct udl_cmd_buf*,int ) ;
 unsigned int UDL_CMD_MAX_FRAMES ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int cv_signal (int *) ;
 int entry ;
 struct udl_cmd_buf* udl_fb_synchronize_locked (struct udl_softc*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct udl_cmd_head* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,unsigned int,int ,int ) ;
 int usbd_xfer_set_frames (struct usb_xfer*,unsigned int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct udl_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
udl_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct udl_softc *sc = usbd_xfer_softc(xfer);
 struct udl_cmd_head *phead = usbd_xfer_get_priv(xfer);
 struct udl_cmd_buf *cb;
 unsigned i;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  TAILQ_CONCAT(&sc->sc_cmd_buf_free, phead, entry);
 case 129:
tr_setup:
  for (i = 0; i != UDL_CMD_MAX_FRAMES; i++) {
   cb = TAILQ_FIRST(&sc->sc_cmd_buf_pending);
   if (cb == ((void*)0)) {
    cb = udl_fb_synchronize_locked(sc);
    if (cb == ((void*)0))
     break;
   } else {
    TAILQ_REMOVE(&sc->sc_cmd_buf_pending, cb, entry);
   }
   TAILQ_INSERT_TAIL(phead, cb, entry);
   usbd_xfer_set_frame_data(xfer, i, cb->buf, cb->off);
  }
  if (i != 0) {
   usbd_xfer_set_frames(xfer, i);
   usbd_transfer_submit(xfer);
  }
  break;
 default:
  TAILQ_CONCAT(&sc->sc_cmd_buf_free, phead, entry);
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }

 cv_signal(&sc->sc_cv);
}
