
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_subdisk {struct g_raid_softc* sd_softc; } ;
struct g_raid_softc {int sc_queue_mtx; int sc_queue; } ;
struct bio {struct g_raid_subdisk* bio_caller1; } ;


 int bioq_insert_tail (int *,struct bio*) ;
 int dumping ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_raid_softc*) ;

__attribute__((used)) static void
g_raid_disk_done(struct bio *bp)
{
 struct g_raid_softc *sc;
 struct g_raid_subdisk *sd;

 sd = bp->bio_caller1;
 sc = sd->sd_softc;
 mtx_lock(&sc->sc_queue_mtx);
 bioq_insert_tail(&sc->sc_queue, bp);
 mtx_unlock(&sc->sc_queue_mtx);
 if (!dumping)
  wakeup(sc);
}
