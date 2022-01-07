
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sfxge_txq {scalar_t__ evq_index; scalar_t__ init_state; int ptr_mask; int pending; int entries; scalar_t__ completed; struct sfxge_txq* next; } ;
struct sfxge_evq {scalar_t__ index; scalar_t__ tx_done; struct sfxge_txq** txqs; } ;
typedef int boolean_t ;


 int KASSERT (int,char*) ;
 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EV_BATCH ;
 scalar_t__ SFXGE_TXQ_STARTED ;
 scalar_t__ SFXGE_TX_BATCH ;
 scalar_t__ __predict_false (int) ;
 struct sfxge_txq* sfxge_get_txq_by_label (struct sfxge_evq*,int) ;
 int sfxge_tx_qcomplete (struct sfxge_txq*,struct sfxge_evq*) ;

__attribute__((used)) static boolean_t
sfxge_ev_tx(void *arg, uint32_t label, uint32_t id)
{
 struct sfxge_evq *evq;
 struct sfxge_txq *txq;
 unsigned int stop;
 unsigned int delta;

 evq = (struct sfxge_evq *)arg;
 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 txq = sfxge_get_txq_by_label(evq, label);

 KASSERT(txq != ((void*)0), ("txq == NULL"));
 KASSERT(evq->index == txq->evq_index,
     ("evq->index != txq->evq_index"));

 if (__predict_false(txq->init_state != SFXGE_TXQ_STARTED))
  goto done;

 stop = (id + 1) & txq->ptr_mask;
 id = txq->pending & txq->ptr_mask;

 delta = (stop >= id) ? (stop - id) : (txq->entries - id + stop);
 txq->pending += delta;

 evq->tx_done++;

 if (txq->next == ((void*)0) &&
     evq->txqs != &(txq->next)) {
  *(evq->txqs) = txq;
  evq->txqs = &(txq->next);
 }

 if (txq->pending - txq->completed >= SFXGE_TX_BATCH)
  sfxge_tx_qcomplete(txq, evq);

done:
 return (evq->tx_done >= SFXGE_EV_BATCH);
}
