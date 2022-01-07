
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int vge_rx_prodidx; scalar_t__ vge_rx_commit; int vge_rx_ring_map; int vge_rx_ring_tag; struct mbuf* vge_tail; struct mbuf* vge_head; struct vge_rxdesc* vge_rxdesc; } ;
struct TYPE_4__ {struct vge_rx_desc* vge_rx_ring; } ;
struct vge_softc {TYPE_3__ vge_cdata; TYPE_1__ vge_rdata; struct ifnet* vge_ifp; } ;
struct vge_rxdesc {struct mbuf* rx_m; } ;
struct vge_rx_desc {int vge_ctl; int vge_sts; } ;
struct TYPE_5__ {int len; int csum_flags; int csum_data; int ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; TYPE_2__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {int if_drv_flags; int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_2 (struct vge_softc*,int ,scalar_t__) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int ETHER_CRC_LEN ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 int MCLBYTES ;
 int M_PKTHDR ;
 int M_VLANTAG ;
 int VGE_CHAIN_RESET (struct vge_softc*) ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_RDCTL_FRAG ;
 int VGE_RDCTL_IPCSUMOK ;
 int VGE_RDCTL_IPPKT ;
 int VGE_RDCTL_PROTOCSUMOK ;
 int VGE_RDCTL_TCPPKT ;
 int VGE_RDCTL_UDPPKT ;
 int VGE_RDCTL_VLANID ;
 int VGE_RDSTS_CSUMERR ;
 int VGE_RDSTS_OWN ;
 int VGE_RDSTS_RLERR ;
 int VGE_RDSTS_RXOK ;
 int VGE_RDSTS_VIDM ;
 int VGE_RDSTS_VTAG ;
 int VGE_RXBYTES (int) ;
 int VGE_RXDESC_RESIDUECNT ;
 int VGE_RXPKT_SOF ;
 int VGE_RX_BUF_ALIGN ;
 int VGE_RX_DESC_INC (int) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int bswap16 (int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 int vge_discard_rxbuf (struct vge_softc*,int) ;
 int vge_fixup_rx (struct mbuf*) ;
 scalar_t__ vge_newbuf (struct vge_softc*,int) ;

__attribute__((used)) static int
vge_rxeof(struct vge_softc *sc, int count)
{
 struct mbuf *m;
 struct ifnet *ifp;
 int prod, prog, total_len;
 struct vge_rxdesc *rxd;
 struct vge_rx_desc *cur_rx;
 uint32_t rxstat, rxctl;

 VGE_LOCK_ASSERT(sc);

 ifp = sc->vge_ifp;

 bus_dmamap_sync(sc->vge_cdata.vge_rx_ring_tag,
     sc->vge_cdata.vge_rx_ring_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 prod = sc->vge_cdata.vge_rx_prodidx;
 for (prog = 0; count > 0 &&
     (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
     VGE_RX_DESC_INC(prod)) {
  cur_rx = &sc->vge_rdata.vge_rx_ring[prod];
  rxstat = le32toh(cur_rx->vge_sts);
  if ((rxstat & VGE_RDSTS_OWN) != 0)
   break;
  count--;
  prog++;
  rxctl = le32toh(cur_rx->vge_ctl);
  total_len = VGE_RXBYTES(rxstat);
  rxd = &sc->vge_cdata.vge_rxdesc[prod];
  m = rxd->rx_m;







  if ((rxstat & VGE_RXPKT_SOF) != 0) {
   if (vge_newbuf(sc, prod) != 0) {
    if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
    VGE_CHAIN_RESET(sc);
    vge_discard_rxbuf(sc, prod);
    continue;
   }
   m->m_len = MCLBYTES - VGE_RX_BUF_ALIGN;
   if (sc->vge_cdata.vge_head == ((void*)0)) {
    sc->vge_cdata.vge_head = m;
    sc->vge_cdata.vge_tail = m;
   } else {
    m->m_flags &= ~M_PKTHDR;
    sc->vge_cdata.vge_tail->m_next = m;
    sc->vge_cdata.vge_tail = m;
   }
   continue;
  }
  if ((rxstat & VGE_RDSTS_RXOK) == 0 &&
      (rxstat & (VGE_RDSTS_VIDM | VGE_RDSTS_RLERR |
      VGE_RDSTS_CSUMERR)) == 0) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);




   VGE_CHAIN_RESET(sc);
   vge_discard_rxbuf(sc, prod);
   continue;
  }

  if (vge_newbuf(sc, prod) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   VGE_CHAIN_RESET(sc);
   vge_discard_rxbuf(sc, prod);
   continue;
  }


  if (sc->vge_cdata.vge_head != ((void*)0)) {
   m->m_len = total_len % (MCLBYTES - VGE_RX_BUF_ALIGN);






   if (m->m_len <= ETHER_CRC_LEN) {
    sc->vge_cdata.vge_tail->m_len -=
        (ETHER_CRC_LEN - m->m_len);
    m_freem(m);
   } else {
    m->m_len -= ETHER_CRC_LEN;
    m->m_flags &= ~M_PKTHDR;
    sc->vge_cdata.vge_tail->m_next = m;
   }
   m = sc->vge_cdata.vge_head;
   m->m_flags |= M_PKTHDR;
   m->m_pkthdr.len = total_len - ETHER_CRC_LEN;
  } else {
   m->m_flags |= M_PKTHDR;
   m->m_pkthdr.len = m->m_len =
       (total_len - ETHER_CRC_LEN);
  }


  vge_fixup_rx(m);

  m->m_pkthdr.rcvif = ifp;


  if ((ifp->if_capenable & IFCAP_RXCSUM) != 0 &&
      (rxctl & VGE_RDCTL_FRAG) == 0) {

   if ((rxctl & VGE_RDCTL_IPPKT) != 0)
    m->m_pkthdr.csum_flags |= CSUM_IP_CHECKED;
   if ((rxctl & VGE_RDCTL_IPCSUMOK) != 0)
    m->m_pkthdr.csum_flags |= CSUM_IP_VALID;


   if (rxctl & (VGE_RDCTL_TCPPKT | VGE_RDCTL_UDPPKT) &&
       rxctl & VGE_RDCTL_PROTOCSUMOK) {
    m->m_pkthdr.csum_flags |=
        CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
    m->m_pkthdr.csum_data = 0xffff;
   }
  }

  if ((rxstat & VGE_RDSTS_VTAG) != 0) {





   m->m_pkthdr.ether_vtag =
       bswap16(rxctl & VGE_RDCTL_VLANID);
   m->m_flags |= M_VLANTAG;
  }

  VGE_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  VGE_LOCK(sc);
  sc->vge_cdata.vge_head = ((void*)0);
  sc->vge_cdata.vge_tail = ((void*)0);
 }

 if (prog > 0) {
  sc->vge_cdata.vge_rx_prodidx = prod;
  bus_dmamap_sync(sc->vge_cdata.vge_rx_ring_tag,
      sc->vge_cdata.vge_rx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

  if (sc->vge_cdata.vge_rx_commit != 0) {
   CSR_WRITE_2(sc, VGE_RXDESC_RESIDUECNT,
       sc->vge_cdata.vge_rx_commit);
   sc->vge_cdata.vge_rx_commit = 0;
  }
 }
 return (prog);
}
