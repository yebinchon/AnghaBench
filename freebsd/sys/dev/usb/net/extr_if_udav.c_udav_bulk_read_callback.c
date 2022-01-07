
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct udav_softc {struct usb_ether sc_ue; } ;
struct udav_rxpkt {int rxstat; int pktlen; } ;
struct ifnet {int dummy; } ;
typedef int stat ;


 int DPRINTF (char*,int ) ;
 int ETHER_CRC_LEN ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int UDAV_RSR_ERR ;
 int UDAV_RSR_LCS ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 int le16toh (int ) ;
 int min (int,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 int uether_rxbuf (struct usb_ether*,struct usb_page_cache*,int,int) ;
 int uether_rxflush (struct usb_ether*) ;
 int usbd_copy_out (struct usb_page_cache*,int ,struct udav_rxpkt*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct udav_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
udav_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct udav_softc *sc = usbd_xfer_softc(xfer);
 struct usb_ether *ue = &sc->sc_ue;
 struct ifnet *ifp = uether_getifp(ue);
 struct usb_page_cache *pc;
 struct udav_rxpkt stat;
 int len;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:

  if (actlen < (int)(sizeof(stat) + ETHER_CRC_LEN)) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, &stat, sizeof(stat));
  actlen -= sizeof(stat);
  len = min(actlen, le16toh(stat.pktlen));
  len -= ETHER_CRC_LEN;

  if (stat.rxstat & UDAV_RSR_LCS) {
   if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
   goto tr_setup;
  }
  if (stat.rxstat & UDAV_RSR_ERR) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }
  uether_rxbuf(ue, pc, sizeof(stat), len);

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
