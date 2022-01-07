
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_softc {int bqueue_mtx; int bqueue_up; } ;
struct g_geom {struct gv_softc* softc; } ;
struct bio {TYPE_1__* bio_from; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int KASSERT (int ,char*) ;
 int bioq_disksort (int ,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct gv_softc*) ;

void
gv_done(struct bio *bp)
{
 struct g_geom *gp;
 struct gv_softc *sc;

 KASSERT(bp != ((void*)0), ("NULL bp"));

 gp = bp->bio_from->geom;
 sc = gp->softc;

 mtx_lock(&sc->bqueue_mtx);
 bioq_disksort(sc->bqueue_up, bp);
 wakeup(sc);
 mtx_unlock(&sc->bqueue_mtx);
}
