
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct mos_softc {int sc_ue; } ;
struct ifnet {int dummy; } ;
typedef int pkt ;


 int IFCOUNTER_OERRORS ;
 int MOS_DPRINTFN (char*,int) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int *,int) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct mos_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
mos_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct mos_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct usb_page_cache *pc;
 uint32_t pkt;
 int actlen;

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));
 MOS_DPRINTFN("actlen %i", actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &pkt, sizeof(pkt));

 case 129:
tr_setup:
  return;
 default:
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}
