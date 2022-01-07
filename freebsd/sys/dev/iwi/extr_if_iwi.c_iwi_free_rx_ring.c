
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct iwi_rx_ring {int count; int * data_dmat; struct iwi_rx_data* data; } ;
struct iwi_rx_data {int * map; int * m; } ;


 int BUS_DMASYNC_POSTREAD ;
 int M_DEVBUF ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int free (struct iwi_rx_data*,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
iwi_free_rx_ring(struct iwi_softc *sc, struct iwi_rx_ring *ring)
{
 struct iwi_rx_data *data;
 int i;

 if (ring->data != ((void*)0)) {
  for (i = 0; i < ring->count; i++) {
   data = &ring->data[i];

   if (data->m != ((void*)0)) {
    bus_dmamap_sync(ring->data_dmat, data->map,
        BUS_DMASYNC_POSTREAD);
    bus_dmamap_unload(ring->data_dmat, data->map);
    m_freem(data->m);
   }

   if (data->map != ((void*)0))
    bus_dmamap_destroy(ring->data_dmat, data->map);
  }

  free(ring->data, M_DEVBUF);
 }

 if (ring->data_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->data_dmat);
}
