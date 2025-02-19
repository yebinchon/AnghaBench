
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_sched_softc {int sc_pending; int sc_data; TYPE_1__* sc_gsched; } ;
struct g_geom {struct g_sched_softc* softc; } ;
struct bio {int bio_caller1; struct g_geom* bio_caller2; } ;
struct TYPE_2__ {int (* gs_done ) (int ,struct bio*) ;} ;


 int DONE ;
 int KASSERT (int ,char*) ;
 int TRC_BIO_EVENT (int ,struct bio*) ;
 int g_sched_flush_classes (struct g_geom*) ;
 int g_sched_lock (struct g_geom*) ;
 int g_sched_unlock (struct g_geom*) ;
 int g_sched_update_stats (struct bio*) ;
 int g_std_done (struct bio*) ;
 int stub1 (int ,struct bio*) ;
 int wakeup (struct g_geom*) ;

__attribute__((used)) static void
g_sched_done(struct bio *bio)
{
 struct g_geom *gp = bio->bio_caller2;
 struct g_sched_softc *sc = gp->softc;

 TRC_BIO_EVENT(DONE, bio);

 KASSERT(bio->bio_caller1, ("null bio_caller1 in g_sched_done"));

 g_sched_lock(gp);

 g_sched_update_stats(bio);
 sc->sc_gsched->gs_done(sc->sc_data, bio);
 if (!--sc->sc_pending)
  wakeup(gp);

 g_sched_flush_classes(gp);
 g_sched_unlock(gp);

 g_std_done(bio);
}
