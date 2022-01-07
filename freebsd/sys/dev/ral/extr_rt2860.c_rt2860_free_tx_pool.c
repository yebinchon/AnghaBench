
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_tx_data {int map; } ;
struct rt2860_softc {int data_pool; int * txwi_dmat; int txwi_map; int * txwi_vaddr; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int SLIST_EMPTY (int *) ;
 struct rt2860_tx_data* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int next ;

void
rt2860_free_tx_pool(struct rt2860_softc *sc)
{
 if (sc->txwi_vaddr != ((void*)0)) {
  bus_dmamap_sync(sc->txwi_dmat, sc->txwi_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->txwi_dmat, sc->txwi_map);
  bus_dmamem_free(sc->txwi_dmat, sc->txwi_vaddr, sc->txwi_map);
 }
 if (sc->txwi_dmat != ((void*)0))
  bus_dma_tag_destroy(sc->txwi_dmat);

 while (!SLIST_EMPTY(&sc->data_pool)) {
  struct rt2860_tx_data *data;
  data = SLIST_FIRST(&sc->data_pool);
  bus_dmamap_destroy(sc->txwi_dmat, data->map);
  SLIST_REMOVE_HEAD(&sc->data_pool, next);
 }
}
