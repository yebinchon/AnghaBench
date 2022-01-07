
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int * msk_stat_tag; int * msk_stat_ring; int msk_stat_map; scalar_t__ msk_stat_ring_paddr; } ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
msk_status_dma_free(struct msk_softc *sc)
{


 if (sc->msk_stat_tag) {
  if (sc->msk_stat_ring_paddr) {
   bus_dmamap_unload(sc->msk_stat_tag, sc->msk_stat_map);
   sc->msk_stat_ring_paddr = 0;
  }
  if (sc->msk_stat_ring) {
   bus_dmamem_free(sc->msk_stat_tag,
       sc->msk_stat_ring, sc->msk_stat_map);
   sc->msk_stat_ring = ((void*)0);
  }
  bus_dma_tag_destroy(sc->msk_stat_tag);
  sc->msk_stat_tag = ((void*)0);
 }
}
