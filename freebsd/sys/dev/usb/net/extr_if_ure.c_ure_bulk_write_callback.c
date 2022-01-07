
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int txpkt ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ure_txpkt {int ure_pktlen; } ;
struct ure_softc {int sc_flags; int sc_ue; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DPRINTFN (int,char*,...) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int URE_FLAG_LINK ;
 int URE_TKPKT_TX_FS ;
 int URE_TKPKT_TX_LS ;
 int URE_TXPKT_LEN_MASK ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int htole32 (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int memset (struct ure_txpkt*,int ,int) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_in (struct usb_page_cache*,int,struct ure_txpkt*,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ure_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
ure_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ure_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct usb_page_cache *pc;
 struct mbuf *m;
 struct ure_txpkt txpkt;
 int len, pos;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete\n");
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 case 129:
tr_setup:
  if ((sc->sc_flags & URE_FLAG_LINK) == 0 ||
      (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {



   return;
  }
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;
  pos = 0;
  len = m->m_pkthdr.len;
  pc = usbd_xfer_get_frame(xfer, 0);
  memset(&txpkt, 0, sizeof(txpkt));
  txpkt.ure_pktlen = htole32((len & URE_TXPKT_LEN_MASK) |
      URE_TKPKT_TX_FS | URE_TKPKT_TX_LS);
  usbd_copy_in(pc, pos, &txpkt, sizeof(txpkt));
  pos += sizeof(txpkt);
  usbd_m_copy_in(pc, pos, m, 0, m->m_pkthdr.len);
  pos += m->m_pkthdr.len;

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);





  BPF_MTAP(ifp, m);

  m_freem(m);


  usbd_xfer_set_frame_len(xfer, 0, pos);

  usbd_transfer_submit(xfer);
  ifp->if_drv_flags |= IFF_DRV_OACTIVE;
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
