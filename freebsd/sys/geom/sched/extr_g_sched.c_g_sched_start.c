
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct g_sched_softc {int sc_flags; int sc_pending; int sc_data; TYPE_1__* sc_gsched; } ;
struct g_geom {int consumer; int provider; struct g_sched_softc* softc; } ;
struct bio {scalar_t__ bio_cmd; TYPE_2__* bio_caller1; int bio_done; scalar_t__ bio_length; struct g_geom* bio_caller2; TYPE_3__* bio_to; } ;
struct TYPE_7__ {struct g_geom* geom; } ;
struct TYPE_6__ {int gs_write_bytes_in_flight; int gs_writes_in_flight; int gs_bytes_in_flight; int gs_requests; int gs_in_flight; } ;
struct TYPE_5__ {scalar_t__ (* gs_start ) (int ,struct bio*) ;} ;


 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int ENOMEM ;
 int G_SCHED_FLUSHING ;
 int G_SCHED_LOGREQ (struct bio*,char*) ;
 int KASSERT (int ,char*) ;
 TYPE_3__* LIST_FIRST (int *) ;
 int START ;
 int TRC_BIO_EVENT (int ,struct bio*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,TYPE_3__*) ;
 int g_sched_dispatch (struct g_geom*) ;
 int g_sched_done ;
 int g_sched_lock (struct g_geom*) ;
 int g_sched_unlock (struct g_geom*) ;
 int g_std_done ;
 TYPE_2__ me ;
 scalar_t__ stub1 (int ,struct bio*) ;

__attribute__((used)) static void
g_sched_start(struct bio *bp)
{
 struct g_geom *gp = bp->bio_to->geom;
 struct g_sched_softc *sc = gp->softc;
 struct bio *cbp;

 TRC_BIO_EVENT(START, bp);
 G_SCHED_LOGREQ(bp, "Request received.");

 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 cbp->bio_done = g_sched_done;
 cbp->bio_to = LIST_FIRST(&gp->provider);
 KASSERT(cbp->bio_to != ((void*)0), ("NULL provider"));


 if (bp->bio_cmd != BIO_READ && bp->bio_cmd != BIO_WRITE)
  goto bypass;

 G_SCHED_LOGREQ(cbp, "Sending request.");

 g_sched_lock(gp);






 if (!sc->sc_gsched || (sc->sc_flags & G_SCHED_FLUSHING) ||
     sc->sc_gsched->gs_start(sc->sc_data, cbp)) {
  g_sched_unlock(gp);
  goto bypass;
 }




 if (cbp->bio_caller1 == ((void*)0))
  cbp->bio_caller1 = &me;

 cbp->bio_caller2 = gp;
 sc->sc_pending++;


 me.gs_in_flight++;
 me.gs_requests++;
 me.gs_bytes_in_flight += bp->bio_length;
 if (bp->bio_cmd == BIO_WRITE) {
  me.gs_writes_in_flight++;
  me.gs_write_bytes_in_flight += bp->bio_length;
 }
 g_sched_dispatch(gp);
 g_sched_unlock(gp);
 return;

bypass:
 cbp->bio_done = g_std_done;
 cbp->bio_caller1 = ((void*)0);
 g_io_request(cbp, LIST_FIRST(&gp->consumer));
}
