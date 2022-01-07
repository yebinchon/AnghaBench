
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_mountver_softc {scalar_t__ sc_orphaned; scalar_t__ sc_shutting_down; int sc_queue; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct bio {TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int ENXIO ;
 int G_MOUNTVER_LOGREQ (struct bio*,char*) ;
 int TAILQ_EMPTY (int *) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_mountver_queue (struct bio*) ;
 int g_mountver_send (struct bio*) ;
 int g_mountver_send_queued (struct g_geom*) ;

__attribute__((used)) static void
g_mountver_start(struct bio *bp)
{
 struct g_mountver_softc *sc;
 struct g_geom *gp;

 gp = bp->bio_to->geom;
 sc = gp->softc;
 G_MOUNTVER_LOGREQ(bp, "Request received.");






 if (sc->sc_orphaned || !TAILQ_EMPTY(&sc->sc_queue)) {
  if (sc->sc_shutting_down) {
   G_MOUNTVER_LOGREQ(bp, "Discarding request due to shutdown.");
   g_io_deliver(bp, ENXIO);
   return;
  }
  G_MOUNTVER_LOGREQ(bp, "Queueing request.");
  g_mountver_queue(bp);
  if (!sc->sc_orphaned)
   g_mountver_send_queued(gp);
 } else {
  G_MOUNTVER_LOGREQ(bp, "Sending request.");
  g_mountver_send(bp);
 }
}
