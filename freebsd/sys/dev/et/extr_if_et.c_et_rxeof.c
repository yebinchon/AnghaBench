
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_3__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct et_rxstat_ring {int rsr_index; int rsr_wrap; int rsr_dmap; int rsr_dtag; struct et_rxstat* rsr_stat; } ;
struct et_rxstatus_data {int rxsd_dmap; int rxsd_dtag; TYPE_1__* rxsd_status; } ;
struct et_softc {int sc_flags; struct et_rxdesc_ring* sc_rx_ring; struct et_rxbuf_data* sc_rx_data; struct et_rxstat_ring sc_rxstat_ring; struct et_rxstatus_data sc_rx_status; struct ifnet* ifp; } ;
struct et_rxstat {int rxst_info2; int rxst_info1; } ;
struct et_rxdesc_ring {int rr_index; int rr_wrap; int rr_posreg; } ;
struct et_rxbuf_data {scalar_t__ (* rbd_newbuf ) (struct et_rxbuf_data*,int) ;int (* rbd_discard ) (struct et_rxbuf_data*,int) ;TYPE_2__* rbd_buf; } ;
struct TYPE_5__ {struct mbuf* rb_mbuf; } ;
struct TYPE_4__ {int rxs_stat_ring; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 scalar_t__ ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int ET_FLAG_TXRX_ENABLED ;
 int ET_LOCK (struct et_softc*) ;
 int ET_LOCK_ASSERT (struct et_softc*) ;
 int ET_RXSTAT_POS ;
 int ET_RXSTAT_POS_INDEX_MASK ;
 int ET_RXSTAT_POS_WRAP ;
 int ET_RXST_INFO1_OK ;
 int ET_RXST_INFO2_BUFIDX_MASK ;
 int ET_RXST_INFO2_BUFIDX_SHIFT ;
 int ET_RXST_INFO2_LEN_MASK ;
 int ET_RXST_INFO2_LEN_SHIFT ;
 int ET_RXST_INFO2_RINGIDX_MASK ;
 int ET_RXST_INFO2_RINGIDX_SHIFT ;
 int ET_RXS_STATRING_INDEX_MASK ;
 int ET_RXS_STATRING_INDEX_SHIFT ;
 int ET_RXS_STATRING_WRAP ;
 int ET_RX_NDESC ;
 int ET_RX_NRING ;
 int ET_RX_NSTAT ;
 int ET_RX_RING_POS_INDEX_MASK ;
 int ET_RX_RING_POS_WRAP ;
 int ET_UNLOCK (struct et_softc*) ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IQDROPS ;
 int IFF_DRV_RUNNING ;
 int MPASS (int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int if_printf (struct ifnet*,char*,int,...) ;
 int le32toh (int ) ;
 int m_freem (struct mbuf*) ;
 int stub1 (struct et_rxbuf_data*,int) ;
 scalar_t__ stub2 (struct et_rxbuf_data*,int) ;
 int stub3 (struct et_rxbuf_data*,int) ;
 int stub4 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
et_rxeof(struct et_softc *sc)
{
 struct et_rxstatus_data *rxsd;
 struct et_rxstat_ring *rxst_ring;
 struct et_rxbuf_data *rbd;
 struct et_rxdesc_ring *rx_ring;
 struct et_rxstat *st;
 struct ifnet *ifp;
 struct mbuf *m;
 uint32_t rxstat_pos, rxring_pos;
 uint32_t rxst_info1, rxst_info2, rxs_stat_ring;
 int buflen, buf_idx, npost[2], ring_idx;
 int rxst_index, rxst_wrap;

 ET_LOCK_ASSERT(sc);

 ifp = sc->ifp;
 rxsd = &sc->sc_rx_status;
 rxst_ring = &sc->sc_rxstat_ring;

 if ((sc->sc_flags & ET_FLAG_TXRX_ENABLED) == 0)
  return;

 bus_dmamap_sync(rxsd->rxsd_dtag, rxsd->rxsd_dmap,
     BUS_DMASYNC_POSTREAD);
 bus_dmamap_sync(rxst_ring->rsr_dtag, rxst_ring->rsr_dmap,
     BUS_DMASYNC_POSTREAD);

 npost[0] = npost[1] = 0;
 rxs_stat_ring = le32toh(rxsd->rxsd_status->rxs_stat_ring);
 rxst_wrap = (rxs_stat_ring & ET_RXS_STATRING_WRAP) ? 1 : 0;
 rxst_index = (rxs_stat_ring & ET_RXS_STATRING_INDEX_MASK) >>
     ET_RXS_STATRING_INDEX_SHIFT;

 while (rxst_index != rxst_ring->rsr_index ||
     rxst_wrap != rxst_ring->rsr_wrap) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;

  MPASS(rxst_ring->rsr_index < ET_RX_NSTAT);
  st = &rxst_ring->rsr_stat[rxst_ring->rsr_index];
  rxst_info1 = le32toh(st->rxst_info1);
  rxst_info2 = le32toh(st->rxst_info2);
  buflen = (rxst_info2 & ET_RXST_INFO2_LEN_MASK) >>
      ET_RXST_INFO2_LEN_SHIFT;
  buf_idx = (rxst_info2 & ET_RXST_INFO2_BUFIDX_MASK) >>
      ET_RXST_INFO2_BUFIDX_SHIFT;
  ring_idx = (rxst_info2 & ET_RXST_INFO2_RINGIDX_MASK) >>
      ET_RXST_INFO2_RINGIDX_SHIFT;

  if (++rxst_ring->rsr_index == ET_RX_NSTAT) {
   rxst_ring->rsr_index = 0;
   rxst_ring->rsr_wrap ^= 1;
  }
  rxstat_pos = rxst_ring->rsr_index & ET_RXSTAT_POS_INDEX_MASK;
  if (rxst_ring->rsr_wrap)
   rxstat_pos |= ET_RXSTAT_POS_WRAP;
  CSR_WRITE_4(sc, ET_RXSTAT_POS, rxstat_pos);

  if (ring_idx >= ET_RX_NRING) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   if_printf(ifp, "invalid ring index %d\n", ring_idx);
   continue;
  }
  if (buf_idx >= ET_RX_NDESC) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   if_printf(ifp, "invalid buf index %d\n", buf_idx);
   continue;
  }

  rbd = &sc->sc_rx_data[ring_idx];
  m = rbd->rbd_buf[buf_idx].rb_mbuf;
  if ((rxst_info1 & ET_RXST_INFO1_OK) == 0){

   rbd->rbd_discard(rbd, buf_idx);
  } else if (rbd->rbd_newbuf(rbd, buf_idx) != 0) {

   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   rbd->rbd_discard(rbd, buf_idx);
  } else {
   buflen -= ETHER_CRC_LEN;
   if (buflen < ETHER_HDR_LEN) {
    m_freem(m);
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   } else {
    m->m_pkthdr.len = m->m_len = buflen;
    m->m_pkthdr.rcvif = ifp;
    ET_UNLOCK(sc);
    ifp->if_input(ifp, m);
    ET_LOCK(sc);
   }
  }

  rx_ring = &sc->sc_rx_ring[ring_idx];
  if (buf_idx != rx_ring->rr_index) {
   if_printf(ifp,
       "WARNING!! ring %d, buf_idx %d, rr_idx %d\n",
       ring_idx, buf_idx, rx_ring->rr_index);
  }

  MPASS(rx_ring->rr_index < ET_RX_NDESC);
  if (++rx_ring->rr_index == ET_RX_NDESC) {
   rx_ring->rr_index = 0;
   rx_ring->rr_wrap ^= 1;
  }
  rxring_pos = rx_ring->rr_index & ET_RX_RING_POS_INDEX_MASK;
  if (rx_ring->rr_wrap)
   rxring_pos |= ET_RX_RING_POS_WRAP;
  CSR_WRITE_4(sc, rx_ring->rr_posreg, rxring_pos);
 }

 bus_dmamap_sync(rxsd->rxsd_dtag, rxsd->rxsd_dmap,
     BUS_DMASYNC_PREREAD);
 bus_dmamap_sync(rxst_ring->rsr_dtag, rxst_ring->rsr_dmap,
     BUS_DMASYNC_PREREAD);
}
