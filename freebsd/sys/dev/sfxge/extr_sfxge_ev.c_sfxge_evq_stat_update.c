
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_evq {scalar_t__ init_state; int stats; int common; scalar_t__ stats_update_time; } ;
typedef scalar_t__ clock_t ;


 int SFXGE_EVQ_LOCK (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 int SFXGE_EVQ_UNLOCK (struct sfxge_evq*) ;
 scalar_t__ __predict_false (int) ;
 int efx_ev_qstats_update (int ,int ) ;
 scalar_t__ hz ;
 scalar_t__ ticks ;

__attribute__((used)) static void
sfxge_evq_stat_update(struct sfxge_evq *evq)
{
 clock_t now;

 SFXGE_EVQ_LOCK(evq);

 if (__predict_false(evq->init_state != SFXGE_EVQ_STARTED))
  goto out;

 now = ticks;
 if ((unsigned int)(now - evq->stats_update_time) < (unsigned int)hz)
  goto out;

 evq->stats_update_time = now;
 efx_ev_qstats_update(evq->common, evq->stats);

out:
 SFXGE_EVQ_UNLOCK(evq);
}
