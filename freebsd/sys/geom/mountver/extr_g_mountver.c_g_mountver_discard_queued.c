
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mountver_softc {int sc_mtx; int sc_queue; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct bio {int dummy; } ;


 int ENXIO ;
 int G_MOUNTVER_LOGREQ (struct bio*,char*) ;
 struct bio* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct bio*,int ) ;
 int bio_queue ;
 int g_io_deliver (struct bio*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_mountver_discard_queued(struct g_geom *gp)
{
 struct g_mountver_softc *sc;
 struct bio *bp;

 sc = gp->softc;

 mtx_lock(&sc->sc_mtx);
 while ((bp = TAILQ_FIRST(&sc->sc_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&sc->sc_queue, bp, bio_queue);
  G_MOUNTVER_LOGREQ(bp, "Discarding queued request.");
  g_io_deliver(bp, ENXIO);
 }
 mtx_unlock(&sc->sc_mtx);
}
