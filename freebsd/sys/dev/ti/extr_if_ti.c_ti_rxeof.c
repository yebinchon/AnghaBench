
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int ti_rx_jumbo_ring_map; int ti_rx_jumbo_ring_tag; int ti_rx_mini_ring_map; int ti_rx_mini_ring_tag; int ti_rx_std_ring_map; int ti_rx_std_ring_tag; int ti_rx_return_ring_map; int ti_rx_return_ring_tag; struct mbuf** ti_rx_std_chain; struct mbuf** ti_rx_mini_chain; int ti_rx_jumbo_tag; int * ti_rx_jumbo_maps; struct mbuf** ti_rx_jumbo_chain; } ;
struct TYPE_6__ {struct ti_rx_desc* ti_rx_return_ring; int * ti_rx_mini_ring; } ;
struct TYPE_5__ {scalar_t__ ti_idx; } ;
struct ti_softc {scalar_t__ ti_rx_saved_considx; size_t ti_jumbo; size_t ti_mini; size_t ti_std; scalar_t__ ti_hwrev; TYPE_4__ ti_cdata; scalar_t__ ti_hdrsplit; TYPE_2__ ti_rdata; TYPE_1__ ti_return_prodidx; struct ifnet* ti_ifp; } ;
struct ti_rx_desc {size_t ti_idx; int ti_len; int ti_flags; int ti_ip_cksum; int ti_tcp_udp_cksum; int ti_addr; int ti_vlan_tag; } ;
struct ti_cmd_desc {int dummy; } ;
struct TYPE_7__ {int len; int ether_vtag; int csum_flags; int csum_data; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; TYPE_3__ m_pkthdr; } ;
struct ifnet {scalar_t__ if_mtu; int if_capenable; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
typedef int bus_dmamap_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct ti_softc*,int ,size_t) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ETHERMTU ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int M_VLANTAG ;
 int TI_BDFLAG_ERROR ;
 int TI_BDFLAG_IP_CKSUM ;
 int TI_BDFLAG_JUMBO_RING ;
 int TI_BDFLAG_MINI_RING ;
 int TI_BDFLAG_TCP_UDP_CKSUM ;
 int TI_BDFLAG_VLAN_TAG ;
 int TI_GCR_RXRETURNCONS_IDX ;
 int TI_HOSTADDR (int ) ;
 scalar_t__ TI_HWREV_TIGON ;
 int TI_INC (size_t,int ) ;
 int TI_JUMBO_RX_RING_CNT ;
 int TI_LOCK (struct ti_softc*) ;
 int TI_LOCK_ASSERT (struct ti_softc*) ;
 int TI_MINI_RX_RING_CNT ;
 int TI_RETURN_RING_CNT ;
 int TI_STD_RX_RING_CNT ;
 int TI_UNLOCK (struct ti_softc*) ;
 int TI_UPDATE_JUMBOPROD (struct ti_softc*,size_t) ;
 int TI_UPDATE_MINIPROD (struct ti_softc*,size_t) ;
 int TI_UPDATE_STDPROD (struct ti_softc*,size_t) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_adj (struct mbuf*,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 int ti_discard_jumbo (struct ti_softc*,size_t) ;
 int ti_discard_mini (struct ti_softc*,size_t) ;
 int ti_discard_std (struct ti_softc*,size_t) ;
 int ti_hdr_split (struct mbuf*,int ,int,size_t) ;
 scalar_t__ ti_newbuf_jumbo (struct ti_softc*,size_t,struct mbuf*) ;
 scalar_t__ ti_newbuf_mini (struct ti_softc*,size_t) ;
 scalar_t__ ti_newbuf_std (struct ti_softc*,size_t) ;

__attribute__((used)) static void
ti_rxeof(struct ti_softc *sc)
{
 struct ifnet *ifp;



 struct ti_cmd_desc cmd;
 int jumbocnt, minicnt, stdcnt, ti_len;

 TI_LOCK_ASSERT(sc);

 ifp = sc->ti_ifp;

 bus_dmamap_sync(sc->ti_cdata.ti_rx_std_ring_tag,
     sc->ti_cdata.ti_rx_std_ring_map, BUS_DMASYNC_POSTWRITE);
 if (ifp->if_mtu > ETHERMTU + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN)
  bus_dmamap_sync(sc->ti_cdata.ti_rx_jumbo_ring_tag,
      sc->ti_cdata.ti_rx_jumbo_ring_map, BUS_DMASYNC_POSTWRITE);
 if (sc->ti_rdata.ti_rx_mini_ring != ((void*)0))
  bus_dmamap_sync(sc->ti_cdata.ti_rx_mini_ring_tag,
      sc->ti_cdata.ti_rx_mini_ring_map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_sync(sc->ti_cdata.ti_rx_return_ring_tag,
     sc->ti_cdata.ti_rx_return_ring_map, BUS_DMASYNC_POSTREAD);

 jumbocnt = minicnt = stdcnt = 0;
 while (sc->ti_rx_saved_considx != sc->ti_return_prodidx.ti_idx) {
  struct ti_rx_desc *cur_rx;
  uint32_t rxidx;
  struct mbuf *m = ((void*)0);
  uint16_t vlan_tag = 0;
  int have_tag = 0;

  cur_rx =
      &sc->ti_rdata.ti_rx_return_ring[sc->ti_rx_saved_considx];
  rxidx = cur_rx->ti_idx;
  ti_len = cur_rx->ti_len;
  TI_INC(sc->ti_rx_saved_considx, TI_RETURN_RING_CNT);

  if (cur_rx->ti_flags & TI_BDFLAG_VLAN_TAG) {
   have_tag = 1;
   vlan_tag = cur_rx->ti_vlan_tag;
  }

  if (cur_rx->ti_flags & TI_BDFLAG_JUMBO_RING) {
   jumbocnt++;
   TI_INC(sc->ti_jumbo, TI_JUMBO_RX_RING_CNT);
   m = sc->ti_cdata.ti_rx_jumbo_chain[rxidx];

   if (cur_rx->ti_flags & TI_BDFLAG_ERROR) {
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
    ti_discard_jumbo(sc, rxidx);
    continue;
   }
   if (ti_newbuf_jumbo(sc, rxidx, ((void*)0)) != 0) {
    if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
    ti_discard_jumbo(sc, rxidx);
    continue;
   }
   m->m_len = ti_len;
  } else if (cur_rx->ti_flags & TI_BDFLAG_MINI_RING) {
   minicnt++;
   TI_INC(sc->ti_mini, TI_MINI_RX_RING_CNT);
   m = sc->ti_cdata.ti_rx_mini_chain[rxidx];
   if (cur_rx->ti_flags & TI_BDFLAG_ERROR) {
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
    ti_discard_mini(sc, rxidx);
    continue;
   }
   if (ti_newbuf_mini(sc, rxidx) != 0) {
    if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
    ti_discard_mini(sc, rxidx);
    continue;
   }
   m->m_len = ti_len;
  } else {
   stdcnt++;
   TI_INC(sc->ti_std, TI_STD_RX_RING_CNT);
   m = sc->ti_cdata.ti_rx_std_chain[rxidx];
   if (cur_rx->ti_flags & TI_BDFLAG_ERROR) {
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
    ti_discard_std(sc, rxidx);
    continue;
   }
   if (ti_newbuf_std(sc, rxidx) != 0) {
    if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
    ti_discard_std(sc, rxidx);
    continue;
   }
   m->m_len = ti_len;
  }

  m->m_pkthdr.len = ti_len;
  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  m->m_pkthdr.rcvif = ifp;

  if (ifp->if_capenable & IFCAP_RXCSUM) {
   if (cur_rx->ti_flags & TI_BDFLAG_IP_CKSUM) {
    m->m_pkthdr.csum_flags |= CSUM_IP_CHECKED;
    if ((cur_rx->ti_ip_cksum ^ 0xffff) == 0)
     m->m_pkthdr.csum_flags |= CSUM_IP_VALID;
   }
   if (cur_rx->ti_flags & TI_BDFLAG_TCP_UDP_CKSUM) {
    m->m_pkthdr.csum_data =
        cur_rx->ti_tcp_udp_cksum;
    m->m_pkthdr.csum_flags |= CSUM_DATA_VALID;
   }
  }





  if (have_tag) {
   m->m_pkthdr.ether_vtag = vlan_tag;
   m->m_flags |= M_VLANTAG;
  }
  TI_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  TI_LOCK(sc);
 }

 bus_dmamap_sync(sc->ti_cdata.ti_rx_return_ring_tag,
     sc->ti_cdata.ti_rx_return_ring_map, BUS_DMASYNC_PREREAD);

 if (sc->ti_hwrev == TI_HWREV_TIGON)
  CSR_WRITE_4(sc, TI_GCR_RXRETURNCONS_IDX,
      sc->ti_rx_saved_considx);

 if (stdcnt > 0) {
  bus_dmamap_sync(sc->ti_cdata.ti_rx_std_ring_tag,
      sc->ti_cdata.ti_rx_std_ring_map, BUS_DMASYNC_PREWRITE);
  TI_UPDATE_STDPROD(sc, sc->ti_std);
 }
 if (minicnt > 0) {
  bus_dmamap_sync(sc->ti_cdata.ti_rx_mini_ring_tag,
      sc->ti_cdata.ti_rx_mini_ring_map, BUS_DMASYNC_PREWRITE);
  TI_UPDATE_MINIPROD(sc, sc->ti_mini);
 }
 if (jumbocnt > 0) {
  bus_dmamap_sync(sc->ti_cdata.ti_rx_jumbo_ring_tag,
      sc->ti_cdata.ti_rx_jumbo_ring_map, BUS_DMASYNC_PREWRITE);
  TI_UPDATE_JUMBOPROD(sc, sc->ti_jumbo);
 }
}
