
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct ubt_softc {int dummy; } ;


 int UBT_STAT_IERROR (struct ubt_softc*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ubt_isoc_read_one_frame (struct usb_xfer*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_max_framelen (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int ) ;
 struct ubt_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int*) ;

__attribute__((used)) static void
ubt_isoc_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubt_softc *sc = usbd_xfer_softc(xfer);
 int n;
 int actlen, nframes;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), &nframes);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  for (n = 0; n < nframes; n ++)
   if (ubt_isoc_read_one_frame(xfer, n) < 0)
    break;


 case 129:
read_next:
  for (n = 0; n < nframes; n ++)
   usbd_xfer_set_frame_len(xfer, n,
       usbd_xfer_max_framelen(xfer));

  usbd_transfer_submit(xfer);
  break;

 default:
                if (error != USB_ERR_CANCELLED) {
                        UBT_STAT_IERROR(sc);
                        goto read_next;
                }


  break;
 }
}
