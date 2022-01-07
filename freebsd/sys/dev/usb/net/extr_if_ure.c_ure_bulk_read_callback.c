
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct ure_softc {struct usb_ether sc_ue; } ;
struct ure_rxpkt {int ure_pktlen; } ;
struct ifnet {int dummy; } ;
typedef int pkt ;


 int DPRINTF (char*,int ) ;
 int ETHER_CRC_LEN ;
 int IFCOUNTER_IERRORS ;
 int URE_RXPKT_LEN_MASK ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 int uether_rxbuf (struct usb_ether*,struct usb_page_cache*,int,int) ;
 int uether_rxflush (struct usb_ether*) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct ure_rxpkt*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ure_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ure_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ure_softc *sc = usbd_xfer_softc(xfer);
 struct usb_ether *ue = &sc->sc_ue;
 struct ifnet *ifp = uether_getifp(ue);
 struct usb_page_cache *pc;
 struct ure_rxpkt pkt;
 int actlen, len;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen < (int)(sizeof(pkt))) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &pkt, sizeof(pkt));
  len = le32toh(pkt.ure_pktlen) & URE_RXPKT_LEN_MASK;
  len -= ETHER_CRC_LEN;
  if (actlen < (int)(len + sizeof(pkt))) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }

  uether_rxbuf(ue, pc, sizeof(pkt), len);

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  uether_rxflush(ue);
  return;

 default:
  DPRINTF("bulk read error, %s\n",
      usbd_errstr(error));

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}
