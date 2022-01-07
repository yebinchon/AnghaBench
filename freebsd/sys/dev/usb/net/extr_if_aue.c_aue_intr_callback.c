
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct aue_softc {int sc_ue; } ;
struct aue_intrpkt {int aue_txstat0; } ;
typedef int pkt ;


 int AUE_TXSTAT0_EXCESSCOLL ;
 int AUE_TXSTAT0_LATECOLL ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct aue_intrpkt*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct aue_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
aue_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct aue_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct aue_intrpkt pkt;
 struct usb_page_cache *pc;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) &&
      actlen >= (int)sizeof(pkt)) {

   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_out(pc, 0, &pkt, sizeof(pkt));

   if (pkt.aue_txstat0)
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   if (pkt.aue_txstat0 & (AUE_TXSTAT0_LATECOLL |
       AUE_TXSTAT0_EXCESSCOLL))
    if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
  }

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}
