
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_uzip_softc {int queue_mtx; int bio_queue; } ;
struct g_geom {struct g_uzip_softc* softc; } ;
struct bio {TYPE_1__* bio_to; struct bio* bio_parent; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int bioq_disksort (int *,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_uzip_softc*) ;

__attribute__((used)) static void
g_uzip_read_done(struct bio *bp)
{
 struct bio *bp2;
 struct g_geom *gp;
 struct g_uzip_softc *sc;

 bp2 = bp->bio_parent;
 gp = bp2->bio_to->geom;
 sc = gp->softc;

 mtx_lock(&sc->queue_mtx);
 bioq_disksort(&sc->bio_queue, bp);
 mtx_unlock(&sc->queue_mtx);
 wakeup(sc);
}
