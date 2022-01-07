
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int csum_flags; int csum_data; int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct glc_softc {size_t sc_next_rxdma_slot; int sc_self; TYPE_3__* sc_rxsoft; int sc_dev; int sc_bus; int sc_rxdmadesc_map; int sc_dmadesc_tag; int sc_mtx; TYPE_1__* sc_rxdmadesc; struct ifnet* sc_ifp; } ;
struct TYPE_6__ {int rxs_desc; struct mbuf* rxs_mbuf; } ;
struct TYPE_4__ {int cmd_stat; int rxerror; int data_stat; int valid_size; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int GELIC_CMDSTAT_CHAIN_END ;
 int GELIC_DESCR_OWNED ;
 int GELIC_RXERRORS ;
 int GELIC_RX_IPCSUM ;
 int GELIC_RX_TCPUDPCSUM ;
 int GLC_MAX_RX_PACKETS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ glc_add_rxbuf (struct glc_softc*,int) ;
 int glc_add_rxbuf_dma (struct glc_softc*,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int lv1_net_start_rx_dma (int ,int ,int ,int ) ;
 int m_adj (struct mbuf*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
glc_rxintr(struct glc_softc *sc)
{
 int i, restart_rxdma, error;
 struct mbuf *m;
 struct ifnet *ifp = sc->sc_ifp;

 bus_dmamap_sync(sc->sc_dmadesc_tag, sc->sc_rxdmadesc_map,
     BUS_DMASYNC_POSTREAD);

 restart_rxdma = 0;
 while ((sc->sc_rxdmadesc[sc->sc_next_rxdma_slot].cmd_stat &
    GELIC_DESCR_OWNED) == 0) {
  i = sc->sc_next_rxdma_slot;
  sc->sc_next_rxdma_slot++;
  if (sc->sc_next_rxdma_slot >= GLC_MAX_RX_PACKETS)
   sc->sc_next_rxdma_slot = 0;

  if (sc->sc_rxdmadesc[i].cmd_stat & GELIC_CMDSTAT_CHAIN_END)
   restart_rxdma = 1;

  if (sc->sc_rxdmadesc[i].rxerror & GELIC_RXERRORS) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto requeue;
  }

  m = sc->sc_rxsoft[i].rxs_mbuf;
  if (sc->sc_rxdmadesc[i].data_stat & GELIC_RX_IPCSUM) {
   m->m_pkthdr.csum_flags |=
       CSUM_IP_CHECKED | CSUM_IP_VALID;
  }
  if (sc->sc_rxdmadesc[i].data_stat & GELIC_RX_TCPUDPCSUM) {
   m->m_pkthdr.csum_flags |=
       CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
   m->m_pkthdr.csum_data = 0xffff;
  }

  if (glc_add_rxbuf(sc, i)) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto requeue;
  }

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  m->m_pkthdr.rcvif = ifp;
  m->m_len = sc->sc_rxdmadesc[i].valid_size;
  m->m_pkthdr.len = m->m_len;





  m_adj(m, 2);

  mtx_unlock(&sc->sc_mtx);
  (*ifp->if_input)(ifp, m);
  mtx_lock(&sc->sc_mtx);

     requeue:
  glc_add_rxbuf_dma(sc, i);
 }

 bus_dmamap_sync(sc->sc_dmadesc_tag, sc->sc_rxdmadesc_map,
     BUS_DMASYNC_PREWRITE);

 if (restart_rxdma) {
  error = lv1_net_start_rx_dma(sc->sc_bus, sc->sc_dev,
      sc->sc_rxsoft[sc->sc_next_rxdma_slot].rxs_desc, 0);
  if (error != 0)
   device_printf(sc->sc_self,
       "lv1_net_start_rx_dma error: %d\n", error);
 }
}
