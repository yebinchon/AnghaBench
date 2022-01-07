
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct wpi_tx_ring {size_t pending; size_t cur; int data_dmat; struct wpi_tx_data* data; } ;
struct wpi_tx_data {int * ni; int * m; int map; } ;
struct wpi_softc {struct wpi_tx_ring* txq; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int WPI_TXQ_LOCK (struct wpi_softc*) ;
 int WPI_TXQ_UNLOCK (struct wpi_softc*) ;
 size_t WPI_TX_RING_COUNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_node_decref (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
wpi_free_txfrags(struct wpi_softc *sc, uint16_t ac)
{
 struct wpi_tx_ring *ring;
 struct wpi_tx_data *data;
 uint8_t cur;

 WPI_TXQ_LOCK(sc);
 ring = &sc->txq[ac];

 while (ring->pending != 0) {
  ring->pending--;
  cur = (ring->cur + ring->pending) % WPI_TX_RING_COUNT;
  data = &ring->data[cur];

  bus_dmamap_sync(ring->data_dmat, data->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->data_dmat, data->map);
  m_freem(data->m);
  data->m = ((void*)0);

  ieee80211_node_decref(data->ni);
  data->ni = ((void*)0);
 }

 WPI_TXQ_UNLOCK(sc);
}
