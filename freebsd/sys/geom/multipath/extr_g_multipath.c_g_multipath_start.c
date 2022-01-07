
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_multipath_softc {uintptr_t sc_ndisks; int sc_mtx; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_consumer {int private; } ;
struct bio {int bio_done; void* bio_driver1; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int ENOMEM ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 struct g_consumer* g_multipath_choose (struct g_geom*,struct bio*) ;
 int g_multipath_done ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_multipath_start(struct bio *bp)
{
 struct g_multipath_softc *sc;
 struct g_geom *gp;
 struct g_consumer *cp;
 struct bio *cbp;
 uintptr_t *cnt;

 gp = bp->bio_to->geom;
 sc = gp->softc;
 KASSERT(sc != ((void*)0), ("NULL sc"));
 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 mtx_lock(&sc->sc_mtx);
 cp = g_multipath_choose(gp, bp);
 if (cp == ((void*)0)) {
  mtx_unlock(&sc->sc_mtx);
  g_destroy_bio(cbp);
  g_io_deliver(bp, ENXIO);
  return;
 }
 if ((uintptr_t)bp->bio_driver1 < sc->sc_ndisks)
  bp->bio_driver1 = (void *)(uintptr_t)sc->sc_ndisks;
 cnt = (uintptr_t *)&cp->private;
 (*cnt)++;
 mtx_unlock(&sc->sc_mtx);
 cbp->bio_done = g_multipath_done;
 g_io_request(cbp, cp);
}
