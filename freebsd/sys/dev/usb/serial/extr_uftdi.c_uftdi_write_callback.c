
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int sc_portno; } ;
struct uftdi_softc {scalar_t__ sc_hdrlen; TYPE_1__ sc_ucom; } ;


 int DPRINTFN (int,char*) ;
 int FTDI_OUT_TAG (scalar_t__,int ) ;
 scalar_t__ UFTDI_OBUFSIZE ;
 scalar_t__ UFTDI_OPKTSIZE ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int ucom_get_data (TYPE_1__*,struct usb_page_cache*,scalar_t__,scalar_t__,scalar_t__*) ;
 int usbd_copy_in (struct usb_page_cache*,scalar_t__,int *,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,scalar_t__) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uftdi_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
uftdi_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uftdi_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint32_t pktlen;
 uint32_t buflen;
 uint8_t buf[1];

 DPRINTFN(3, "\n");

 switch (USB_GET_STATE(xfer)) {
 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
  }

 case 129:
 case 128:
  pc = usbd_xfer_get_frame(xfer, 0);
  if (sc->sc_hdrlen == 0) {
   if (ucom_get_data(&sc->sc_ucom, pc, 0, UFTDI_OBUFSIZE,
       &buflen) == 0)
    break;
  } else {
   buflen = 0;
   while (buflen < UFTDI_OBUFSIZE - sc->sc_hdrlen - 1 &&
       ucom_get_data(&sc->sc_ucom, pc, buflen +
       sc->sc_hdrlen, UFTDI_OPKTSIZE - sc->sc_hdrlen,
       &pktlen) != 0) {
    buf[0] = FTDI_OUT_TAG(pktlen,
        sc->sc_ucom.sc_portno);
    usbd_copy_in(pc, buflen, buf, 1);
    buflen += pktlen + sc->sc_hdrlen;
   }
  }
  if (buflen != 0) {
   usbd_xfer_set_frame_len(xfer, 0, buflen);
   usbd_transfer_submit(xfer);
  }
  break;
 }
}
