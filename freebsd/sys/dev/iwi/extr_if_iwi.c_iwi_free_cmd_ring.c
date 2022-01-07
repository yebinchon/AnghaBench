
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct iwi_cmd_ring {int * desc_dmat; int desc_map; int * desc; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
iwi_free_cmd_ring(struct iwi_softc *sc, struct iwi_cmd_ring *ring)
{
 if (ring->desc != ((void*)0)) {
  bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->desc_dmat, ring->desc_map);
  bus_dmamem_free(ring->desc_dmat, ring->desc, ring->desc_map);
 }

 if (ring->desc_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->desc_dmat);
}
