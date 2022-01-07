
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct axge_softc {struct usb_ether sc_ue; } ;


 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int axge_rx_frame (struct usb_ether*,struct usb_page_cache*,int) ;
 int uether_rxflush (struct usb_ether*) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct axge_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
axge_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct axge_softc *sc;
 struct usb_ether *ue;
 struct usb_page_cache *pc;
 int actlen;

 sc = usbd_xfer_softc(xfer);
 ue = &sc->sc_ue;
 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  pc = usbd_xfer_get_frame(xfer, 0);
  axge_rx_frame(ue, pc, actlen);


 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  uether_rxflush(ue);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}
