
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_6__ {int arge_rx_cons; int arge_rx_ring_map; int arge_rx_ring_tag; int arge_rx_tag; struct arge_rxdesc* arge_rxdesc; } ;
struct TYPE_4__ {struct arge_desc* arge_rx_ring; } ;
struct arge_softc {int arge_hw_flags; TYPE_3__ arge_cdata; int arge_dev; TYPE_1__ arge_rdata; struct ifnet* arge_ifp; } ;
struct arge_rxdesc {struct mbuf* rx_m; int rx_dmamap; } ;
struct arge_desc {int packet_ctrl; scalar_t__ packet_addr; } ;


 int AR71XX_DMA_RX_STATUS ;
 int ARGE_DESC_EMPTY ;
 int ARGE_DMASIZE (int) ;
 int ARGE_HW_FLG_RX_DESC_ALIGN_4BYTE ;
 int ARGE_INC (int,int) ;
 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_LOCK_ASSERT (struct arge_softc*) ;
 int ARGE_RX_RING_COUNT ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int ARGE_WRITE (struct arge_softc*,int ,int ) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int DMA_RX_STATUS_PKT_RECVD ;
 scalar_t__ ETHER_CRC_LEN ;
 int IFCOUNTER_IPACKETS ;
 int arge_fixup_rx (struct mbuf*) ;
 scalar_t__ arge_newbuf (struct arge_softc*,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static int
arge_rx_locked(struct arge_softc *sc)
{
 struct arge_rxdesc *rxd;
 struct ifnet *ifp = sc->arge_ifp;
 int cons, prog, packet_len, i;
 struct arge_desc *cur_rx;
 struct mbuf *m;
 int rx_npkts = 0;

 ARGE_LOCK_ASSERT(sc);

 cons = sc->arge_cdata.arge_rx_cons;

 bus_dmamap_sync(sc->arge_cdata.arge_rx_ring_tag,
     sc->arge_cdata.arge_rx_ring_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 for (prog = 0; prog < ARGE_RX_RING_COUNT;
     ARGE_INC(cons, ARGE_RX_RING_COUNT)) {
  cur_rx = &sc->arge_rdata.arge_rx_ring[cons];
  rxd = &sc->arge_cdata.arge_rxdesc[cons];
  m = rxd->rx_m;

  if ((cur_rx->packet_ctrl & ARGE_DESC_EMPTY) != 0)
         break;

  ARGE_WRITE(sc, AR71XX_DMA_RX_STATUS, DMA_RX_STATUS_PKT_RECVD);

  prog++;

  packet_len = ARGE_DMASIZE(cur_rx->packet_ctrl);
  bus_dmamap_sync(sc->arge_cdata.arge_rx_tag, rxd->rx_dmamap,
      BUS_DMASYNC_POSTREAD);
  m = rxd->rx_m;





  if (sc->arge_hw_flags & ARGE_HW_FLG_RX_DESC_ALIGN_4BYTE)
   arge_fixup_rx(m);

  m->m_pkthdr.rcvif = ifp;

  m->m_pkthdr.len = m->m_len = packet_len - ETHER_CRC_LEN;
  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  rx_npkts++;

  ARGE_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  ARGE_LOCK(sc);
  cur_rx->packet_addr = 0;
 }

 if (prog > 0) {

  i = sc->arge_cdata.arge_rx_cons;
  for (; prog > 0 ; prog--) {
   if (arge_newbuf(sc, i) != 0) {
    device_printf(sc->arge_dev,
        "Failed to allocate buffer\n");
    break;
   }
   ARGE_INC(i, ARGE_RX_RING_COUNT);
  }

  bus_dmamap_sync(sc->arge_cdata.arge_rx_ring_tag,
      sc->arge_cdata.arge_rx_ring_map,
      BUS_DMASYNC_PREWRITE);

  sc->arge_cdata.arge_rx_cons = cons;
 }

 return (rx_npkts);
}
