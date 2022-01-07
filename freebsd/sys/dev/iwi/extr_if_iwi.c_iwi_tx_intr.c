
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct iwi_tx_ring {scalar_t__ next; int queued; int data_dmat; struct iwi_tx_data* data; int csr_ridx; } ;
struct iwi_tx_data {int * m; int * ni; int map; } ;
struct iwi_softc {scalar_t__ sc_softled; scalar_t__ sc_tx_timer; } ;


 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CSR_READ_4 (struct iwi_softc*,int ) ;
 int DPRINTFN (int,char*) ;
 int IWI_LED_TX ;
 int IWI_TX_RING_COUNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_tx_complete (int *,int *,int ) ;
 int iwi_led_event (struct iwi_softc*,int ) ;
 int iwi_start (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_tx_intr(struct iwi_softc *sc, struct iwi_tx_ring *txq)
{
 struct iwi_tx_data *data;
 uint32_t hw;

 hw = CSR_READ_4(sc, txq->csr_ridx);

 while (txq->next != hw) {
  data = &txq->data[txq->next];
  DPRINTFN(15, ("tx done idx=%u\n", txq->next));
  bus_dmamap_sync(txq->data_dmat, data->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(txq->data_dmat, data->map);
  ieee80211_tx_complete(data->ni, data->m, 0);
  data->ni = ((void*)0);
  data->m = ((void*)0);
  txq->queued--;
  txq->next = (txq->next + 1) % IWI_TX_RING_COUNT;
 }
 sc->sc_tx_timer = 0;
 if (sc->sc_softled)
  iwi_led_event(sc, IWI_LED_TX);
 iwi_start(sc);
}
