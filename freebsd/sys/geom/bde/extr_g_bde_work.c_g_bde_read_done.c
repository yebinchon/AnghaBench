
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_softc {int worklist_mutex; } ;
struct g_bde_sector {scalar_t__ size; scalar_t__ error; int state; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_completed; struct g_bde_softc* bio_caller2; struct g_bde_sector* bio_caller1; } ;


 scalar_t__ EIO ;
 int G_T_TOPOLOGY ;
 int JUNK ;
 int VALID ;
 int g_destroy_bio (struct bio*) ;
 int g_trace (int ,char*,struct g_bde_sector*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_bde_softc*) ;

__attribute__((used)) static void
g_bde_read_done(struct bio *bp)
{
 struct g_bde_sector *sp;
 struct g_bde_softc *sc;

 sp = bp->bio_caller1;
 g_trace(G_T_TOPOLOGY, "g_bde_read_done(%p)", sp);
 sc = bp->bio_caller2;
 mtx_lock(&sc->worklist_mutex);
 if (bp->bio_error == 0 && bp->bio_completed != sp->size)
  bp->bio_error = EIO;
 sp->error = bp->bio_error;
 if (sp->error == 0)
  sp->state = VALID;
 else
  sp->state = JUNK;
 wakeup(sc);
 g_destroy_bio(bp);
 mtx_unlock(&sc->worklist_mutex);
}
