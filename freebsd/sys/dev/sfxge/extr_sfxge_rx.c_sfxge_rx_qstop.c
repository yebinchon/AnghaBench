
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int rxq_entries; int enp; int dev; struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ init_state; scalar_t__ flush_state; scalar_t__ pending; scalar_t__ added; scalar_t__ completed; int buf_base_id; int common; scalar_t__ loopback; scalar_t__ pushed; int refill_callout; } ;
struct sfxge_evq {int dummy; } ;


 int B_TRUE ;
 int DELAY (int) ;
 int EFX_RXQ_NBUFS (int ) ;
 int KASSERT (int,char*) ;
 int LOG_ERR ;
 int SFXGE_ADAPTER_LOCK_ASSERT_OWNED (struct sfxge_softc*) ;
 int SFXGE_EVQ_LOCK (struct sfxge_evq*) ;
 int SFXGE_EVQ_UNLOCK (struct sfxge_evq*) ;
 scalar_t__ SFXGE_FLUSH_DONE ;
 scalar_t__ SFXGE_FLUSH_FAILED ;
 scalar_t__ SFXGE_FLUSH_PENDING ;
 scalar_t__ SFXGE_RXQ_INITIALIZED ;
 scalar_t__ SFXGE_RXQ_STARTED ;
 int callout_stop (int *) ;
 int device_get_nameunit (int ) ;
 int efx_rx_qdestroy (int ) ;
 scalar_t__ efx_rx_qflush (int ) ;
 int efx_sram_buf_tbl_clear (int ,int ,int ) ;
 int log (int ,char*,int ,unsigned int) ;
 int sfxge_rx_qcomplete (struct sfxge_rxq*,int ) ;

__attribute__((used)) static void
sfxge_rx_qstop(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_rxq *rxq;
 struct sfxge_evq *evq;
 unsigned int count;
 unsigned int retry = 3;

 SFXGE_ADAPTER_LOCK_ASSERT_OWNED(sc);

 rxq = sc->rxq[index];
 evq = sc->evq[index];

 SFXGE_EVQ_LOCK(evq);

 KASSERT(rxq->init_state == SFXGE_RXQ_STARTED,
     ("rxq not started"));

 rxq->init_state = SFXGE_RXQ_INITIALIZED;

 callout_stop(&rxq->refill_callout);

 while (rxq->flush_state != SFXGE_FLUSH_DONE && retry != 0) {
  rxq->flush_state = SFXGE_FLUSH_PENDING;

  SFXGE_EVQ_UNLOCK(evq);


  if (efx_rx_qflush(rxq->common) != 0) {
   SFXGE_EVQ_LOCK(evq);
   rxq->flush_state = SFXGE_FLUSH_FAILED;
   break;
  }

  count = 0;
  do {

   DELAY(100000);

   if (rxq->flush_state != SFXGE_FLUSH_PENDING)
    break;

  } while (++count < 20);

  SFXGE_EVQ_LOCK(evq);

  if (rxq->flush_state == SFXGE_FLUSH_PENDING) {

   log(LOG_ERR, "%s: Cannot flush Rx queue %u\n",
       device_get_nameunit(sc->dev), index);
   rxq->flush_state = SFXGE_FLUSH_DONE;
  }
  retry--;
 }
 if (rxq->flush_state == SFXGE_FLUSH_FAILED) {
  log(LOG_ERR, "%s: Flushing Rx queue %u failed\n",
      device_get_nameunit(sc->dev), index);
  rxq->flush_state = SFXGE_FLUSH_DONE;
 }

 rxq->pending = rxq->added;
 sfxge_rx_qcomplete(rxq, B_TRUE);

 KASSERT(rxq->completed == rxq->pending,
     ("rxq->completed != rxq->pending"));

 rxq->added = 0;
 rxq->pushed = 0;
 rxq->pending = 0;
 rxq->completed = 0;
 rxq->loopback = 0;


 efx_rx_qdestroy(rxq->common);

 efx_sram_buf_tbl_clear(sc->enp, rxq->buf_base_id,
     EFX_RXQ_NBUFS(sc->rxq_entries));

 SFXGE_EVQ_UNLOCK(evq);
}
