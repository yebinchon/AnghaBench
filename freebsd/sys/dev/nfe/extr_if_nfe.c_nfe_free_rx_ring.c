
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_flags; } ;
struct nfe_rx_ring {int * rx_desc_tag; int * desc32; int * desc64; int rx_desc_map; int * rx_data_tag; int * rx_spare_map; struct nfe_rx_data* data; } ;
struct nfe_rx_data {int * m; int * rx_data_map; } ;


 int NFE_40BIT_ADDR ;
 int NFE_RX_RING_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,void*,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
nfe_free_rx_ring(struct nfe_softc *sc, struct nfe_rx_ring *ring)
{
 struct nfe_rx_data *data;
 void *desc;
 int i;

 if (sc->nfe_flags & NFE_40BIT_ADDR)
  desc = ring->desc64;
 else
  desc = ring->desc32;

 for (i = 0; i < NFE_RX_RING_COUNT; i++) {
  data = &ring->data[i];
  if (data->rx_data_map != ((void*)0)) {
   bus_dmamap_destroy(ring->rx_data_tag,
       data->rx_data_map);
   data->rx_data_map = ((void*)0);
  }
  if (data->m != ((void*)0)) {
   m_freem(data->m);
   data->m = ((void*)0);
  }
 }
 if (ring->rx_data_tag != ((void*)0)) {
  if (ring->rx_spare_map != ((void*)0)) {
   bus_dmamap_destroy(ring->rx_data_tag,
       ring->rx_spare_map);
   ring->rx_spare_map = ((void*)0);
  }
  bus_dma_tag_destroy(ring->rx_data_tag);
  ring->rx_data_tag = ((void*)0);
 }

 if (desc != ((void*)0)) {
  bus_dmamap_unload(ring->rx_desc_tag, ring->rx_desc_map);
  bus_dmamem_free(ring->rx_desc_tag, desc, ring->rx_desc_map);
  ring->desc64 = ((void*)0);
  ring->desc32 = ((void*)0);
 }
 if (ring->rx_desc_tag != ((void*)0)) {
  bus_dma_tag_destroy(ring->rx_desc_tag);
  ring->rx_desc_tag = ((void*)0);
 }
}
