
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct mos_softc {struct usb_ether sc_ue; } ;
struct ifnet {int dummy; } ;
struct ether_header {int dummy; } ;
typedef int rxstat ;


 int IFCOUNTER_IERRORS ;
 int MOS_DPRINTFN (char*,...) ;
 int MOS_RXSTS_ALIGN_ERROR ;
 int MOS_RXSTS_CRC_ERROR ;
 int MOS_RXSTS_LARGE_FRAME ;
 int MOS_RXSTS_SHORT_FRAME ;
 int MOS_RXSTS_VALID ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 int uether_rxbuf (struct usb_ether*,struct usb_page_cache*,int ,int) ;
 int uether_rxflush (struct usb_ether*) ;
 int usbd_copy_out (struct usb_page_cache*,int ,int*,int) ;
 int usbd_errstr (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct mos_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
mos_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct mos_softc *sc = usbd_xfer_softc(xfer);
 struct usb_ether *ue = &sc->sc_ue;
 struct ifnet *ifp = uether_getifp(ue);

 uint8_t rxstat = 0;
 uint32_t actlen;
 uint16_t pktlen = 0;
 struct usb_page_cache *pc;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));
 pc = usbd_xfer_get_frame(xfer, 0);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  MOS_DPRINTFN("actlen : %d", actlen);
  if (actlen <= 1) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }

  usbd_copy_out(pc, actlen - sizeof(rxstat), &rxstat,
      sizeof(rxstat));

  if (rxstat != MOS_RXSTS_VALID) {
   MOS_DPRINTFN("erroneous frame received");
   if (rxstat & MOS_RXSTS_SHORT_FRAME)
    MOS_DPRINTFN("frame size less than 64 bytes");
   if (rxstat & MOS_RXSTS_LARGE_FRAME) {
    MOS_DPRINTFN("frame size larger than "
        "1532 bytes");
   }
   if (rxstat & MOS_RXSTS_CRC_ERROR)
    MOS_DPRINTFN("CRC error");
   if (rxstat & MOS_RXSTS_ALIGN_ERROR)
    MOS_DPRINTFN("alignment error");
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }

  pktlen = actlen - 1;
  if (pktlen < sizeof(struct ether_header)) {
   MOS_DPRINTFN("error: pktlen %d is smaller "
       "than ether_header %zd", pktlen,
       sizeof(struct ether_header));
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }
  uether_rxbuf(ue, pc, 0, actlen);

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  uether_rxflush(ue);
  return;
 default:
  MOS_DPRINTFN("bulk read error, %s", usbd_errstr(error));
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  MOS_DPRINTFN("start rx %i", usbd_xfer_max_len(xfer));
  return;
 }
}
