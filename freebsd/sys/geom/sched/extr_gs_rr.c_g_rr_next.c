
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_rr_softc {scalar_t__ sc_in_flight; struct g_rr_queue* sc_active; int sc_rr_tailq; } ;
struct g_rr_queue {scalar_t__ q_status; int q_bioq; scalar_t__ q_service; int q_flags; } ;
struct bio {scalar_t__ bio_length; } ;
struct TYPE_2__ {scalar_t__ bypass; int queue_depth; } ;


 int G_FLAG_COMPLETED ;
 scalar_t__ G_QUEUE_BUSY ;
 scalar_t__ G_QUEUE_READY ;
 struct g_rr_queue* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct g_rr_queue*,int ) ;
 int TAILQ_REMOVE (int *,struct g_rr_queue*,int ) ;
 struct bio* bioq_first (int *) ;
 struct bio* bioq_takefirst (int *) ;
 int g_rr_queue_expired (struct g_rr_queue*) ;
 int g_rr_queue_put (struct g_rr_queue*) ;
 scalar_t__ g_rr_should_anticipate (struct g_rr_queue*,struct bio*) ;
 scalar_t__ get_bounded (int *,int ) ;
 TYPE_1__ me ;
 int q_tailq ;

__attribute__((used)) static struct bio *
g_rr_next(void *data, int force)
{
 struct g_rr_softc *sc = data;
 struct g_rr_queue *qp;
 struct bio *bp, *next;
 int expired;

 qp = sc->sc_active;
 if (me.bypass == 0 && !force) {
  if (sc->sc_in_flight >= get_bounded(&me.queue_depth, 0))
   return (((void*)0));


  if (qp != ((void*)0) && qp->q_status != G_QUEUE_READY) {







   return (((void*)0));
  }
 } else if (qp != ((void*)0) && qp->q_status != G_QUEUE_READY) {
  g_rr_queue_put(qp);
  sc->sc_active = qp = ((void*)0);
 }






 if (qp == ((void*)0)) {
  qp = TAILQ_FIRST(&sc->sc_rr_tailq);
  if (qp == ((void*)0))
   return (((void*)0));

  TAILQ_REMOVE(&sc->sc_rr_tailq, qp, q_tailq);
  sc->sc_active = qp;
  qp->q_service = 0;
  qp->q_flags &= ~G_FLAG_COMPLETED;
 }

 bp = bioq_takefirst(&qp->q_bioq);
 qp->q_service += bp->bio_length;
 expired = g_rr_queue_expired(qp);
 next = bioq_first(&qp->q_bioq);
  if (expired) {
  sc->sc_active = ((void*)0);

  if (next != ((void*)0))
   TAILQ_INSERT_TAIL(&sc->sc_rr_tailq, qp, q_tailq);
  else
   g_rr_queue_put(qp);
 } else if (next != ((void*)0)) {
  qp->q_status = G_QUEUE_READY;
 } else {
  if (!force && g_rr_should_anticipate(qp, bp)) {

   qp->q_status = G_QUEUE_BUSY;
  } else {

   g_rr_queue_put(qp);
   sc->sc_active = ((void*)0);
  }
 }


 sc->sc_in_flight++;

 return (bp);
}
