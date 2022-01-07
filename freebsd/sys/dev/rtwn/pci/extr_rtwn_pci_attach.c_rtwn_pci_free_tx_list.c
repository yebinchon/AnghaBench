
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_tx_ring {scalar_t__ cur; scalar_t__ last; scalar_t__ queued; int * data_dmat; struct rtwn_tx_data* tx_data; int * desc_dmat; int desc_map; int * desc; } ;
struct rtwn_tx_data {int * m; int map; } ;
struct rtwn_softc {int qfullmsk; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;


 int BUS_DMASYNC_POSTWRITE ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int RTWN_PCI_TX_LIST_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rtwn_pci_free_tx_list(struct rtwn_softc *sc, int qid)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_tx_ring *tx_ring = &pc->tx_ring[qid];
 struct rtwn_tx_data *tx_data;
 int i;

 if (tx_ring->desc_dmat != ((void*)0)) {
  if (tx_ring->desc != ((void*)0)) {
   bus_dmamap_sync(tx_ring->desc_dmat,
       tx_ring->desc_map, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(tx_ring->desc_dmat,
       tx_ring->desc_map);
   bus_dmamem_free(tx_ring->desc_dmat, tx_ring->desc,
       tx_ring->desc_map);
  }
  bus_dma_tag_destroy(tx_ring->desc_dmat);
 }

 for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
  tx_data = &tx_ring->tx_data[i];

  if (tx_data->m != ((void*)0)) {
   bus_dmamap_sync(tx_ring->data_dmat, tx_data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(tx_ring->data_dmat, tx_data->map);
   m_freem(tx_data->m);
   tx_data->m = ((void*)0);
  }
 }
 if (tx_ring->data_dmat != ((void*)0)) {
  bus_dma_tag_destroy(tx_ring->data_dmat);
  tx_ring->data_dmat = ((void*)0);
 }

 sc->qfullmsk &= ~(1 << qid);
 tx_ring->queued = 0;
 tx_ring->last = tx_ring->cur = 0;
}
