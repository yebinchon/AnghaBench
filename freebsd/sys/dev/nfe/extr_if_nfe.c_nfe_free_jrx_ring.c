
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_flags; } ;
struct nfe_rx_data {int * m; int * rx_data_map; } ;
struct nfe_jrx_ring {int * jrx_desc_tag; int * jdesc32; int * jdesc64; int jrx_desc_map; int * jrx_data_tag; int * jrx_spare_map; struct nfe_rx_data* jdata; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;


 int NFE_40BIT_ADDR ;
 int NFE_JUMBO_RX_RING_COUNT ;
 int NFE_JUMBO_SUP ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,void*,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
nfe_free_jrx_ring(struct nfe_softc *sc, struct nfe_jrx_ring *ring)
{
 struct nfe_rx_data *data;
 void *desc;
 int i, descsize;

 if ((sc->nfe_flags & NFE_JUMBO_SUP) == 0)
  return;

 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc = ring->jdesc64;
  descsize = sizeof (struct nfe_desc64);
 } else {
  desc = ring->jdesc32;
  descsize = sizeof (struct nfe_desc32);
 }

 for (i = 0; i < NFE_JUMBO_RX_RING_COUNT; i++) {
  data = &ring->jdata[i];
  if (data->rx_data_map != ((void*)0)) {
   bus_dmamap_destroy(ring->jrx_data_tag,
       data->rx_data_map);
   data->rx_data_map = ((void*)0);
  }
  if (data->m != ((void*)0)) {
   m_freem(data->m);
   data->m = ((void*)0);
  }
 }
 if (ring->jrx_data_tag != ((void*)0)) {
  if (ring->jrx_spare_map != ((void*)0)) {
   bus_dmamap_destroy(ring->jrx_data_tag,
       ring->jrx_spare_map);
   ring->jrx_spare_map = ((void*)0);
  }
  bus_dma_tag_destroy(ring->jrx_data_tag);
  ring->jrx_data_tag = ((void*)0);
 }

 if (desc != ((void*)0)) {
  bus_dmamap_unload(ring->jrx_desc_tag, ring->jrx_desc_map);
  bus_dmamem_free(ring->jrx_desc_tag, desc, ring->jrx_desc_map);
  ring->jdesc64 = ((void*)0);
  ring->jdesc32 = ((void*)0);
 }

 if (ring->jrx_desc_tag != ((void*)0)) {
  bus_dma_tag_destroy(ring->jrx_desc_tag);
  ring->jrx_desc_tag = ((void*)0);
 }
}
