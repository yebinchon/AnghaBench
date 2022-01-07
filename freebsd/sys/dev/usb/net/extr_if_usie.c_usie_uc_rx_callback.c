
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
struct usie_softc {int * sc_resp_temp; struct ucom_softc* sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {struct usie_softc* sc_parent; } ;


 int DPRINTF (char*,int) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USIE_BUFSIZE ;
 int USIE_HIPCNS_MIN ;
 int USIE_HIP_FRM_CHR ;
 int ucom_put_data (struct ucom_softc*,struct usb_page_cache*,int ,int) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int *,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ucom_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;
 int usie_hip_rsp (struct usie_softc*,int *,int) ;

__attribute__((used)) static void
usie_uc_rx_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ucom_softc *ucom = usbd_xfer_softc(xfer);
 struct usie_softc *sc = ucom->sc_parent;
 struct usb_page_cache *pc;
 uint32_t actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  pc = usbd_xfer_get_frame(xfer, 0);


  if (ucom == sc->sc_ucom && actlen >= USIE_HIPCNS_MIN) {

   DPRINTF("transferred=%u\n", actlen);


   usbd_copy_out(pc, 0, sc->sc_resp_temp, 1);

   if (sc->sc_resp_temp[0] == USIE_HIP_FRM_CHR) {


    if (actlen > USIE_BUFSIZE)
     actlen = USIE_BUFSIZE;


    usbd_copy_out(pc, 0, sc->sc_resp_temp, actlen);
    usie_hip_rsp(sc, sc->sc_resp_temp, actlen);


    goto tr_setup;
   }

  }

  ucom_put_data(ucom, pc, 0, actlen);


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
