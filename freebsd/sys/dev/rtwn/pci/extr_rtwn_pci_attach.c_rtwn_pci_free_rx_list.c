
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct rtwn_rx_ring {int * data_dmat; struct rtwn_rx_data* rx_data; int * desc_dmat; int * desc; int * desc_map; } ;
struct rtwn_rx_data {int * map; int * m; } ;
struct rtwn_pci_softc {struct rtwn_rx_ring rx_ring; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int RTWN_PCI_RX_LIST_COUNT ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rtwn_pci_free_rx_list(struct rtwn_softc *sc)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_rx_ring *rx_ring = &pc->rx_ring;
 struct rtwn_rx_data *rx_data;
 int i;

 if (rx_ring->desc_dmat != ((void*)0)) {
  if (rx_ring->desc != ((void*)0)) {
   bus_dmamap_sync(rx_ring->desc_dmat,
       rx_ring->desc_map,
       BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(rx_ring->desc_dmat,
       rx_ring->desc_map);
   bus_dmamem_free(rx_ring->desc_dmat, rx_ring->desc,
       rx_ring->desc_map);
   rx_ring->desc = ((void*)0);
  }
  bus_dma_tag_destroy(rx_ring->desc_dmat);
  rx_ring->desc_dmat = ((void*)0);
 }

 for (i = 0; i < RTWN_PCI_RX_LIST_COUNT; i++) {
  rx_data = &rx_ring->rx_data[i];

  if (rx_data->m != ((void*)0)) {
   bus_dmamap_sync(rx_ring->data_dmat,
       rx_data->map, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(rx_ring->data_dmat, rx_data->map);
   m_freem(rx_data->m);
   rx_data->m = ((void*)0);
  }
  bus_dmamap_destroy(rx_ring->data_dmat, rx_data->map);
  rx_data->map = ((void*)0);
 }
 if (rx_ring->data_dmat != ((void*)0)) {
  bus_dma_tag_destroy(rx_ring->data_dmat);
  rx_ring->data_dmat = ((void*)0);
 }
}
