
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_softc {int sc_rr_tailq; int sc_wait; struct g_rr_queue* sc_active; } ;
struct g_rr_queue {int q_bionum; int q_bioq; int q_status; } ;
struct bio {struct g_rr_queue* bio_caller1; } ;
struct TYPE_2__ {scalar_t__ bypass; } ;


 int G_QUEUE_READY ;
 int TAILQ_INSERT_TAIL (int *,struct g_rr_queue*,int ) ;
 int bioq_disksort (int *,struct bio*) ;
 int * bioq_first (int *) ;
 int callout_stop (int *) ;
 struct g_rr_queue* g_rr_queue_get (struct g_rr_softc*,struct bio*) ;
 int g_rr_update_seekdist (struct g_rr_queue*,struct bio*) ;
 int g_rr_update_thinktime (struct g_rr_queue*) ;
 int g_sched_priv_ref (struct g_rr_queue*) ;
 TYPE_1__ me ;
 int q_tailq ;

__attribute__((used)) static int
g_rr_start(void *data, struct bio *bp)
{
 struct g_rr_softc *sc = data;
 struct g_rr_queue *qp;

 if (me.bypass)
  return (-1);


 qp = g_rr_queue_get(sc, bp);
 if (qp == ((void*)0))
  return (-1);

 if (bioq_first(&qp->q_bioq) == ((void*)0)) {





  if (qp == sc->sc_active) {
   qp->q_status = G_QUEUE_READY;
   callout_stop(&sc->sc_wait);
  } else {
   g_sched_priv_ref(qp);
   TAILQ_INSERT_TAIL(&sc->sc_rr_tailq, qp, q_tailq);
  }
 }

 qp->q_bionum = 1 + qp->q_bionum - (qp->q_bionum >> 3);

 g_rr_update_thinktime(qp);
 g_rr_update_seekdist(qp, bp);


 bp->bio_caller1 = qp;
 bioq_disksort(&qp->q_bioq, bp);

 return (0);
}
