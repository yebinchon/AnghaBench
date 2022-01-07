
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int txhdr ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_snd; } ;
struct axge_softc {int sc_flags; int sc_ue; } ;
struct axge_frame_txhdr {int len; int mss; } ;


 int AXGE_CSUM_DISABLE ;
 int AXGE_CSUM_FEATURES ;
 int AXGE_FLAG_LINK ;
 int AXGE_N_FRAMES ;
 int AXGE_TXBYTES (int) ;
 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCAP_TXCSUM ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MCLBYTES ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int htole32 (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_in (struct usb_page_cache*,int,struct axge_frame_txhdr*,int) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frame_offset (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct axge_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
axge_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct axge_softc *sc;
 struct ifnet *ifp;
 struct usb_page_cache *pc;
 struct mbuf *m;
 struct axge_frame_txhdr txhdr;
 int nframes, pos;

 sc = usbd_xfer_softc(xfer);
 ifp = uether_getifp(&sc->sc_ue);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 case 129:
tr_setup:
  if ((sc->sc_flags & AXGE_FLAG_LINK) == 0 ||
      (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {




   return;
  }

  for (nframes = 0; nframes < AXGE_N_FRAMES &&
      !IFQ_DRV_IS_EMPTY(&ifp->if_snd); nframes++) {
   IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
   if (m == ((void*)0))
    break;
   usbd_xfer_set_frame_offset(xfer, nframes * MCLBYTES,
       nframes);
   pc = usbd_xfer_get_frame(xfer, nframes);
   txhdr.mss = 0;
   txhdr.len = htole32(AXGE_TXBYTES(m->m_pkthdr.len));
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0 &&
       (m->m_pkthdr.csum_flags & AXGE_CSUM_FEATURES) == 0)
    txhdr.len |= htole32(AXGE_CSUM_DISABLE);

   pos = 0;
   usbd_copy_in(pc, pos, &txhdr, sizeof(txhdr));
   pos += sizeof(txhdr);
   usbd_m_copy_in(pc, pos, m, 0, m->m_pkthdr.len);
   pos += m->m_pkthdr.len;





   BPF_MTAP(ifp, m);

   m_freem(m);


   usbd_xfer_set_frame_len(xfer, nframes, pos);
  }
  if (nframes != 0) {
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, nframes);
   usbd_xfer_set_frames(xfer, nframes);
   usbd_transfer_submit(xfer);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
  }
  return;

 default:
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;

 }
}
