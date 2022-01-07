
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct wmt_softc {int isize; int report_id; int * buf; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;


 int DPRINTF (char*,int) ;
 int DPRINTFN (int,char*,struct wmt_softc*,int) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int bzero (int *,int ) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int *,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct wmt_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;
 int wmt_process_report (struct wmt_softc*,int *,int) ;

__attribute__((used)) static void
wmt_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct wmt_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t *buf = sc->buf;
 int len;

 usbd_xfer_status(xfer, &len, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  pc = usbd_xfer_get_frame(xfer, 0);

  DPRINTFN(6, "sc=%p actlen=%d\n", sc, len);

  if (len >= (int)sc->isize || (len > 0 && sc->report_id != 0)) {

   if (len > (int)sc->isize)
    len = sc->isize;

   usbd_copy_out(pc, 0, buf, len);


   if (sc->report_id && *buf != sc->report_id)
    goto tr_ignore;


   if (len < sc->isize)
    bzero(buf + len, sc->isize - len);


   if (sc->report_id) {
    len--;
    buf++;
   }

   wmt_process_report(sc, buf, len);
  } else {
tr_ignore:
   DPRINTF("Ignored transfer, %d bytes\n", len);
  }

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  break;
 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
