
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_tx_ring {scalar_t__ cur; scalar_t__ last; scalar_t__ queued; int desc_map; int desc_dmat; int data_dmat; scalar_t__ desc; struct rtwn_tx_data* tx_data; } ;
struct rtwn_tx_data {int * ni; int * m; int map; } ;
struct rtwn_softc {int txdesc_len; int qfullmsk; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;


 int BUS_DMASYNC_POSTWRITE ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int RTWN_PCI_TX_LIST_COUNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;
 int rtwn_pci_copy_tx_desc (struct rtwn_pci_softc*,void*,int *) ;

__attribute__((used)) static void
rtwn_pci_reset_tx_ring_stopped(struct rtwn_softc *sc, int qid)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_tx_ring *ring = &pc->tx_ring[qid];
 int i;

 for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
  struct rtwn_tx_data *data = &ring->tx_data[i];
  void *desc = (uint8_t *)ring->desc + sc->txdesc_len * i;

  rtwn_pci_copy_tx_desc(pc, desc, ((void*)0));

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dmat, data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->data_dmat, data->map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->ni != ((void*)0)) {
   ieee80211_free_node(data->ni);
   data->ni = ((void*)0);
  }
 }

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
     BUS_DMASYNC_POSTWRITE);

 sc->qfullmsk &= ~(1 << qid);
 ring->queued = 0;
 ring->last = ring->cur = 0;
}
