
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_capabilities; int if_snd; } ;
struct axe_softc {int sc_flags; int sc_ue; } ;
struct axe_sframe_hdr {int len; int ilen; } ;
typedef int hdr ;


 int AXE_CSUM_FEATURES ;
 int AXE_FLAG_LINK ;
 int AXE_IS_178_FAMILY (struct axe_softc*) ;
 int AXE_TX_CSUM_DIS ;
 int AXE_TX_CSUM_PSEUDO_HDR ;
 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DPRINTFN (int,char*,...) ;
 int IFCAP_TXCSUM ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MCLBYTES ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int htole16 (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_in (struct usb_page_cache*,int,struct axe_sframe_hdr*,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frame_offset (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct axe_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
axe_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct axe_softc *sc = usbd_xfer_softc(xfer);
 struct axe_sframe_hdr hdr;
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct usb_page_cache *pc;
 struct mbuf *m;
 int nframes, pos;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete\n");
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 case 129:
tr_setup:
  if ((sc->sc_flags & AXE_FLAG_LINK) == 0 ||
      (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {




   return;
  }

  for (nframes = 0; nframes < 16 &&
      !IFQ_DRV_IS_EMPTY(&ifp->if_snd); nframes++) {
   IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
   if (m == ((void*)0))
    break;
   usbd_xfer_set_frame_offset(xfer, nframes * MCLBYTES,
       nframes);
   pos = 0;
   pc = usbd_xfer_get_frame(xfer, nframes);
   if (AXE_IS_178_FAMILY(sc)) {
    hdr.len = htole16(m->m_pkthdr.len);
    hdr.ilen = ~hdr.len;






    if (ifp->if_capabilities & IFCAP_TXCSUM) {
     if ((m->m_pkthdr.csum_flags &
         AXE_CSUM_FEATURES) != 0)
      hdr.len |= htole16(
          AXE_TX_CSUM_PSEUDO_HDR);
     else
      hdr.len |= htole16(
          AXE_TX_CSUM_DIS);
    }
    usbd_copy_in(pc, pos, &hdr, sizeof(hdr));
    pos += sizeof(hdr);
    usbd_m_copy_in(pc, pos, m, 0, m->m_pkthdr.len);
    pos += m->m_pkthdr.len;
    if ((pos % 512) == 0) {
     hdr.len = 0;
     hdr.ilen = 0xffff;
     usbd_copy_in(pc, pos, &hdr,
         sizeof(hdr));
     pos += sizeof(hdr);
    }
   } else {
    usbd_m_copy_in(pc, pos, m, 0, m->m_pkthdr.len);
    pos += m->m_pkthdr.len;
   }
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);





   BPF_MTAP(ifp, m);

   m_freem(m);


   usbd_xfer_set_frame_len(xfer, nframes, pos);
  }
  if (nframes != 0) {
   usbd_xfer_set_frames(xfer, nframes);
   usbd_transfer_submit(xfer);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
  }
  return;

 default:
  DPRINTFN(11, "transfer error, %s\n",
      usbd_errstr(error));

  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;

 }
}
