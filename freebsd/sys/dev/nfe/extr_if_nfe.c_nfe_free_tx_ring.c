
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_tx_ring {int * tx_desc_tag; int * desc32; int * desc64; int * tx_desc_map; int * tx_data_tag; struct nfe_tx_data* data; } ;
struct nfe_tx_data {int * tx_data_map; int * m; } ;
struct nfe_softc {int nfe_flags; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int NFE_40BIT_ADDR ;
 int NFE_TX_RING_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,void*,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
nfe_free_tx_ring(struct nfe_softc *sc, struct nfe_tx_ring *ring)
{
 struct nfe_tx_data *data;
 void *desc;
 int i, descsize;

 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc = ring->desc64;
  descsize = sizeof (struct nfe_desc64);
 } else {
  desc = ring->desc32;
  descsize = sizeof (struct nfe_desc32);
 }

 for (i = 0; i < NFE_TX_RING_COUNT; i++) {
  data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->tx_data_tag, data->tx_data_map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->tx_data_tag, data->tx_data_map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->tx_data_map != ((void*)0)) {
   bus_dmamap_destroy(ring->tx_data_tag,
       data->tx_data_map);
   data->tx_data_map = ((void*)0);
  }
 }

 if (ring->tx_data_tag != ((void*)0)) {
  bus_dma_tag_destroy(ring->tx_data_tag);
  ring->tx_data_tag = ((void*)0);
 }

 if (desc != ((void*)0)) {
  bus_dmamap_sync(ring->tx_desc_tag, ring->tx_desc_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->tx_desc_tag, ring->tx_desc_map);
  bus_dmamem_free(ring->tx_desc_tag, desc, ring->tx_desc_map);
  ring->desc64 = ((void*)0);
  ring->desc32 = ((void*)0);
  bus_dma_tag_destroy(ring->tx_desc_tag);
  ring->tx_desc_tag = ((void*)0);
 }
}
