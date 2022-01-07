
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_10__ {int csum_flags; scalar_t__ len; scalar_t__ ether_vtag; } ;
struct mbuf {int m_flags; TYPE_4__ m_pkthdr; int * m_next; } ;
struct TYPE_8__ {scalar_t__ bge_addr_lo; void* bge_addr_hi; } ;
struct bge_tx_bd {scalar_t__ bge_len; scalar_t__ bge_flags; scalar_t__ bge_mss; scalar_t__ bge_vlan_tag; TYPE_2__ bge_addr; } ;
struct TYPE_9__ {struct mbuf** bge_tx_chain; int * bge_tx_dmamap; int bge_tx_mtag; } ;
struct TYPE_7__ {struct bge_tx_bd* bge_tx_ring; } ;
struct bge_softc {int bge_flags; int bge_csum_features; int bge_forced_collapse; scalar_t__ bge_txcnt; scalar_t__ bge_asicrev; TYPE_3__ bge_cdata; TYPE_1__ bge_ldata; } ;
typedef int bus_dmamap_t ;
struct TYPE_11__ {scalar_t__ ds_len; int ds_addr; } ;
typedef TYPE_5__ bus_dma_segment_t ;


 void* BGE_ADDR_HI (int ) ;
 void* BGE_ADDR_LO (int ) ;
 scalar_t__ BGE_ASICREV_BCM5762 ;
 int BGE_FLAG_JUMBO_FRAME ;
 int BGE_FLAG_PCIE ;
 int BGE_FLAG_SHORT_DMA_BUG ;
 int BGE_INC (size_t,scalar_t__) ;
 int BGE_NSEG_NEW ;
 scalar_t__ BGE_TXBDFLAG_CPU_POST_DMA ;
 scalar_t__ BGE_TXBDFLAG_CPU_PRE_DMA ;
 scalar_t__ BGE_TXBDFLAG_END ;
 scalar_t__ BGE_TXBDFLAG_IP_CSUM ;
 scalar_t__ BGE_TXBDFLAG_JUMBO_FRAME ;
 scalar_t__ BGE_TXBDFLAG_TCP_UDP_CSUM ;
 scalar_t__ BGE_TXBDFLAG_VLAN_TAG ;
 scalar_t__ BGE_TX_RING_CNT ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int EFBIG ;
 int EIO ;
 int ENOBUFS ;
 scalar_t__ ETHER_MAX_LEN ;
 scalar_t__ ETHER_MIN_NOPAD ;
 int M_NOWAIT ;
 int M_VLANTAG ;
 struct mbuf* bge_check_short_dma (struct mbuf*) ;
 int bge_cksum_pad (struct mbuf*) ;
 struct mbuf* bge_setup_tso (struct bge_softc*,struct mbuf*,scalar_t__*,scalar_t__*) ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_5__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 struct mbuf* m_collapse (struct mbuf*,int ,int) ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
bge_encap(struct bge_softc *sc, struct mbuf **m_head, uint32_t *txidx)
{
 bus_dma_segment_t segs[BGE_NSEG_NEW];
 bus_dmamap_t map;
 struct bge_tx_bd *d;
 struct mbuf *m = *m_head;
 uint32_t idx = *txidx;
 uint16_t csum_flags, mss, vlan_tag;
 int nsegs, i, error;

 csum_flags = 0;
 mss = 0;
 vlan_tag = 0;
 if ((sc->bge_flags & BGE_FLAG_SHORT_DMA_BUG) != 0 &&
     m->m_next != ((void*)0)) {
  *m_head = bge_check_short_dma(m);
  if (*m_head == ((void*)0))
   return (ENOBUFS);
  m = *m_head;
 }
 if ((m->m_pkthdr.csum_flags & CSUM_TSO) != 0) {
  *m_head = m = bge_setup_tso(sc, m, &mss, &csum_flags);
  if (*m_head == ((void*)0))
   return (ENOBUFS);
  csum_flags |= BGE_TXBDFLAG_CPU_PRE_DMA |
      BGE_TXBDFLAG_CPU_POST_DMA;
 } else if ((m->m_pkthdr.csum_flags & sc->bge_csum_features) != 0) {
  if (m->m_pkthdr.csum_flags & CSUM_IP)
   csum_flags |= BGE_TXBDFLAG_IP_CSUM;
  if (m->m_pkthdr.csum_flags & (CSUM_TCP | CSUM_UDP)) {
   csum_flags |= BGE_TXBDFLAG_TCP_UDP_CSUM;
   if (m->m_pkthdr.len < ETHER_MIN_NOPAD &&
       (error = bge_cksum_pad(m)) != 0) {
    m_freem(m);
    *m_head = ((void*)0);
    return (error);
   }
  }
 }

 if ((m->m_pkthdr.csum_flags & CSUM_TSO) == 0) {
  if (sc->bge_flags & BGE_FLAG_JUMBO_FRAME &&
      m->m_pkthdr.len > ETHER_MAX_LEN)
   csum_flags |= BGE_TXBDFLAG_JUMBO_FRAME;
  if (sc->bge_forced_collapse > 0 &&
      (sc->bge_flags & BGE_FLAG_PCIE) != 0 && m->m_next != ((void*)0)) {





   if (sc->bge_forced_collapse == 1)
    m = m_defrag(m, M_NOWAIT);
   else
    m = m_collapse(m, M_NOWAIT,
        sc->bge_forced_collapse);
   if (m == ((void*)0))
    m = *m_head;
   *m_head = m;
  }
 }

 map = sc->bge_cdata.bge_tx_dmamap[idx];
 error = bus_dmamap_load_mbuf_sg(sc->bge_cdata.bge_tx_mtag, map, m, segs,
     &nsegs, BUS_DMA_NOWAIT);
 if (error == EFBIG) {
  m = m_collapse(m, M_NOWAIT, BGE_NSEG_NEW);
  if (m == ((void*)0)) {
   m_freem(*m_head);
   *m_head = ((void*)0);
   return (ENOBUFS);
  }
  *m_head = m;
  error = bus_dmamap_load_mbuf_sg(sc->bge_cdata.bge_tx_mtag, map,
      m, segs, &nsegs, BUS_DMA_NOWAIT);
  if (error) {
   m_freem(m);
   *m_head = ((void*)0);
   return (error);
  }
 } else if (error != 0)
  return (error);


 if (sc->bge_txcnt + nsegs >= BGE_TX_RING_CNT) {
  bus_dmamap_unload(sc->bge_cdata.bge_tx_mtag, map);
  return (ENOBUFS);
 }

 bus_dmamap_sync(sc->bge_cdata.bge_tx_mtag, map, BUS_DMASYNC_PREWRITE);

 if (m->m_flags & M_VLANTAG) {
  csum_flags |= BGE_TXBDFLAG_VLAN_TAG;
  vlan_tag = m->m_pkthdr.ether_vtag;
 }

 if (sc->bge_asicrev == BGE_ASICREV_BCM5762 &&
     (m->m_pkthdr.csum_flags & CSUM_TSO) != 0) {






  for (i = 0; ; i++) {
   d = &sc->bge_ldata.bge_tx_ring[idx];
   d->bge_addr.bge_addr_lo = BGE_ADDR_LO(segs[i].ds_addr);
   d->bge_addr.bge_addr_hi = BGE_ADDR_HI(segs[i].ds_addr);
   d->bge_len = segs[i].ds_len;
   if (d->bge_addr.bge_addr_lo + segs[i].ds_len + mss <
       d->bge_addr.bge_addr_lo)
    break;
   d->bge_flags = csum_flags;
   d->bge_vlan_tag = vlan_tag;
   d->bge_mss = mss;
   if (i == nsegs - 1)
    break;
   BGE_INC(idx, BGE_TX_RING_CNT);
  }
  if (i != nsegs - 1) {
   bus_dmamap_sync(sc->bge_cdata.bge_tx_mtag, map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->bge_cdata.bge_tx_mtag, map);
   m_freem(*m_head);
   *m_head = ((void*)0);
   return (EIO);
  }
 } else {
  for (i = 0; ; i++) {
   d = &sc->bge_ldata.bge_tx_ring[idx];
   d->bge_addr.bge_addr_lo = BGE_ADDR_LO(segs[i].ds_addr);
   d->bge_addr.bge_addr_hi = BGE_ADDR_HI(segs[i].ds_addr);
   d->bge_len = segs[i].ds_len;
   d->bge_flags = csum_flags;
   d->bge_vlan_tag = vlan_tag;
   d->bge_mss = mss;
   if (i == nsegs - 1)
    break;
   BGE_INC(idx, BGE_TX_RING_CNT);
  }
 }


 d->bge_flags |= BGE_TXBDFLAG_END;






 sc->bge_cdata.bge_tx_dmamap[*txidx] = sc->bge_cdata.bge_tx_dmamap[idx];
 sc->bge_cdata.bge_tx_dmamap[idx] = map;
 sc->bge_cdata.bge_tx_chain[idx] = m;
 sc->bge_txcnt += nsegs;

 BGE_INC(idx, BGE_TX_RING_CNT);
 *txidx = idx;

 return (0);
}
