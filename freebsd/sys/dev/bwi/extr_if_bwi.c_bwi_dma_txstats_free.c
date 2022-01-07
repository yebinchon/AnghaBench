
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_txstats_data {int * stats_dtag; int stats_dmap; int stats; int * stats_ring_dtag; int stats_ring_dmap; int stats_ring; } ;
struct bwi_softc {struct bwi_txstats_data* sc_txstats; } ;


 int M_DEVBUF ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int ,int ) ;
 int free (struct bwi_txstats_data*,int ) ;

__attribute__((used)) static void
bwi_dma_txstats_free(struct bwi_softc *sc)
{
 struct bwi_txstats_data *st;

 if (sc->sc_txstats == ((void*)0))
  return;
 st = sc->sc_txstats;

 if (st->stats_ring_dtag != ((void*)0)) {
  bus_dmamap_unload(st->stats_ring_dtag, st->stats_ring_dmap);
  bus_dmamem_free(st->stats_ring_dtag, st->stats_ring,
    st->stats_ring_dmap);
  bus_dma_tag_destroy(st->stats_ring_dtag);
 }

 if (st->stats_dtag != ((void*)0)) {
  bus_dmamap_unload(st->stats_dtag, st->stats_dmap);
  bus_dmamem_free(st->stats_dtag, st->stats, st->stats_dmap);
  bus_dma_tag_destroy(st->stats_dtag);
 }

 free(st, M_DEVBUF);
}
