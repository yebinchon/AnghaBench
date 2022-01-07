
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int esm_map; int esm_tag; } ;
struct sfxge_evq {scalar_t__ init_state; scalar_t__ rx_done; scalar_t__ tx_done; int read_ptr; int common; int * txq; int ** txqs; TYPE_1__ mem; } ;


 int BUS_DMASYNC_POSTREAD ;
 int B_TRUE ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 int SFXGE_EVQ_LOCK (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 scalar_t__ SFXGE_EVQ_STARTING ;
 int SFXGE_EVQ_UNLOCK (struct sfxge_evq*) ;
 scalar_t__ __predict_false (int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int efx_ev_qpoll (int ,int *,int *,struct sfxge_evq*) ;
 int efx_ev_qprime (int ,int ) ;
 int sfxge_ev_callbacks ;
 int sfxge_ev_qcomplete (struct sfxge_evq*,int ) ;

int
sfxge_ev_qpoll(struct sfxge_evq *evq)
{
 int rc;

 SFXGE_EVQ_LOCK(evq);

 if (__predict_false(evq->init_state != SFXGE_EVQ_STARTING &&
       evq->init_state != SFXGE_EVQ_STARTED)) {
  rc = EINVAL;
  goto fail;
 }


 bus_dmamap_sync(evq->mem.esm_tag, evq->mem.esm_map,
     BUS_DMASYNC_POSTREAD);

 KASSERT(evq->rx_done == 0, ("evq->rx_done != 0"));
 KASSERT(evq->tx_done == 0, ("evq->tx_done != 0"));
 KASSERT(evq->txq == ((void*)0), ("evq->txq != NULL"));
 KASSERT(evq->txqs == &evq->txq, ("evq->txqs != &evq->txq"));


 efx_ev_qpoll(evq->common, &evq->read_ptr, &sfxge_ev_callbacks, evq);

 evq->rx_done = 0;
 evq->tx_done = 0;


 sfxge_ev_qcomplete(evq, B_TRUE);


 if ((rc = efx_ev_qprime(evq->common, evq->read_ptr)) != 0)
  goto fail;

 SFXGE_EVQ_UNLOCK(evq);

 return (0);

fail:
 SFXGE_EVQ_UNLOCK(evq);
 return (rc);
}
