
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_5__ {size_t ether_vtag; int rcvif; scalar_t__ len; } ;
struct mbuf {scalar_t__ m_data; int m_flags; TYPE_2__ m_pkthdr; scalar_t__ m_len; } ;
struct TYPE_6__ {int bge_rx_jumbo_ring_map; int bge_rx_jumbo_ring_tag; int bge_rx_std_ring_map; int bge_rx_std_ring_tag; int bge_rx_return_ring_map; int bge_rx_return_ring_tag; struct mbuf** bge_rx_std_chain; struct mbuf** bge_rx_jumbo_chain; } ;
struct TYPE_4__ {struct bge_rx_bd* bge_rx_return_ring; } ;
struct bge_softc {size_t bge_rx_saved_considx; scalar_t__ rxcycles; int bge_return_ring_cnt; size_t bge_jumbo; size_t bge_std; int bge_flags; TYPE_3__ bge_cdata; TYPE_1__ bge_ldata; int bge_ifp; } ;
struct bge_rx_bd {size_t bge_idx; int bge_flags; size_t bge_vlan_tag; scalar_t__ bge_len; } ;
typedef int if_t ;


 int BGE_FLAG_RX_ALIGNBUG ;
 int BGE_INC (size_t,int) ;
 scalar_t__ BGE_IS_5705_PLUS (struct bge_softc*) ;
 scalar_t__ BGE_IS_JUMBO_CAPABLE (struct bge_softc*) ;
 int BGE_JUMBO_RX_RING_CNT ;
 int BGE_LOCK (struct bge_softc*) ;
 int BGE_MBX_RX_CONS0_LO ;
 int BGE_MBX_RX_JUMBO_PROD_LO ;
 int BGE_MBX_RX_STD_PROD_LO ;
 int BGE_RXBDFLAG_ERROR ;
 int BGE_RXBDFLAG_JUMBO_RING ;
 int BGE_RXBDFLAG_VLAN_TAG ;
 int BGE_RXLP_LOCSTAT_IFIN_DROPS ;
 int BGE_STD_RX_RING_CNT ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 scalar_t__ ETHER_ALIGN ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 scalar_t__ MCLBYTES ;
 int M_VLANTAG ;
 int bcopy (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ bge_newbuf_jumbo (struct bge_softc*,size_t) ;
 scalar_t__ bge_newbuf_std (struct bge_softc*,size_t) ;
 int bge_rxcsum (struct bge_softc*,struct bge_rx_bd*,struct mbuf*) ;
 int bge_rxreuse_jumbo (struct bge_softc*,size_t) ;
 int bge_rxreuse_std (struct bge_softc*,size_t) ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 scalar_t__ if_getmtu (int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_incierrors (int ,int ) ;
 int if_input (int ,struct mbuf*) ;

__attribute__((used)) static int
bge_rxeof(struct bge_softc *sc, uint16_t rx_prod, int holdlck)
{
 if_t ifp;
 int rx_npkts = 0, stdcnt = 0, jumbocnt = 0;
 uint16_t rx_cons;

 rx_cons = sc->bge_rx_saved_considx;


 if (rx_cons == rx_prod)
  return (rx_npkts);

 ifp = sc->bge_ifp;

 bus_dmamap_sync(sc->bge_cdata.bge_rx_return_ring_tag,
     sc->bge_cdata.bge_rx_return_ring_map, BUS_DMASYNC_POSTREAD);
 bus_dmamap_sync(sc->bge_cdata.bge_rx_std_ring_tag,
     sc->bge_cdata.bge_rx_std_ring_map, BUS_DMASYNC_POSTWRITE);
 if (BGE_IS_JUMBO_CAPABLE(sc) &&
     if_getmtu(ifp) + ETHER_HDR_LEN + ETHER_CRC_LEN +
     ETHER_VLAN_ENCAP_LEN > (MCLBYTES - ETHER_ALIGN))
  bus_dmamap_sync(sc->bge_cdata.bge_rx_jumbo_ring_tag,
      sc->bge_cdata.bge_rx_jumbo_ring_map, BUS_DMASYNC_POSTWRITE);

 while (rx_cons != rx_prod) {
  struct bge_rx_bd *cur_rx;
  uint32_t rxidx;
  struct mbuf *m = ((void*)0);
  uint16_t vlan_tag = 0;
  int have_tag = 0;
  cur_rx = &sc->bge_ldata.bge_rx_return_ring[rx_cons];

  rxidx = cur_rx->bge_idx;
  BGE_INC(rx_cons, sc->bge_return_ring_cnt);

  if (if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING &&
      cur_rx->bge_flags & BGE_RXBDFLAG_VLAN_TAG) {
   have_tag = 1;
   vlan_tag = cur_rx->bge_vlan_tag;
  }

  if (cur_rx->bge_flags & BGE_RXBDFLAG_JUMBO_RING) {
   jumbocnt++;
   m = sc->bge_cdata.bge_rx_jumbo_chain[rxidx];
   if (cur_rx->bge_flags & BGE_RXBDFLAG_ERROR) {
    bge_rxreuse_jumbo(sc, rxidx);
    continue;
   }
   if (bge_newbuf_jumbo(sc, rxidx) != 0) {
    bge_rxreuse_jumbo(sc, rxidx);
    if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
    continue;
   }
   BGE_INC(sc->bge_jumbo, BGE_JUMBO_RX_RING_CNT);
  } else {
   stdcnt++;
   m = sc->bge_cdata.bge_rx_std_chain[rxidx];
   if (cur_rx->bge_flags & BGE_RXBDFLAG_ERROR) {
    bge_rxreuse_std(sc, rxidx);
    continue;
   }
   if (bge_newbuf_std(sc, rxidx) != 0) {
    bge_rxreuse_std(sc, rxidx);
    if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
    continue;
   }
   BGE_INC(sc->bge_std, BGE_STD_RX_RING_CNT);
  }

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);





  if (sc->bge_flags & BGE_FLAG_RX_ALIGNBUG) {
   bcopy(m->m_data, m->m_data + ETHER_ALIGN,
       cur_rx->bge_len);
   m->m_data += ETHER_ALIGN;
  }

  m->m_pkthdr.len = m->m_len = cur_rx->bge_len - ETHER_CRC_LEN;
  m->m_pkthdr.rcvif = ifp;

  if (if_getcapenable(ifp) & IFCAP_RXCSUM)
   bge_rxcsum(sc, cur_rx, m);





  if (have_tag) {
   m->m_pkthdr.ether_vtag = vlan_tag;
   m->m_flags |= M_VLANTAG;
  }

  if (holdlck != 0) {
   BGE_UNLOCK(sc);
   if_input(ifp, m);
   BGE_LOCK(sc);
  } else
   if_input(ifp, m);
  rx_npkts++;

  if (!(if_getdrvflags(ifp) & IFF_DRV_RUNNING))
   return (rx_npkts);
 }

 bus_dmamap_sync(sc->bge_cdata.bge_rx_return_ring_tag,
     sc->bge_cdata.bge_rx_return_ring_map, BUS_DMASYNC_PREREAD);
 if (stdcnt > 0)
  bus_dmamap_sync(sc->bge_cdata.bge_rx_std_ring_tag,
      sc->bge_cdata.bge_rx_std_ring_map, BUS_DMASYNC_PREWRITE);

 if (jumbocnt > 0)
  bus_dmamap_sync(sc->bge_cdata.bge_rx_jumbo_ring_tag,
      sc->bge_cdata.bge_rx_jumbo_ring_map, BUS_DMASYNC_PREWRITE);

 sc->bge_rx_saved_considx = rx_cons;
 bge_writembx(sc, BGE_MBX_RX_CONS0_LO, sc->bge_rx_saved_considx);
 if (stdcnt)
  bge_writembx(sc, BGE_MBX_RX_STD_PROD_LO, (sc->bge_std +
      BGE_STD_RX_RING_CNT - 1) % BGE_STD_RX_RING_CNT);
 if (jumbocnt)
  bge_writembx(sc, BGE_MBX_RX_JUMBO_PROD_LO, (sc->bge_jumbo +
      BGE_JUMBO_RX_RING_CNT - 1) % BGE_JUMBO_RX_RING_CNT);
 return (rx_npkts);
}
