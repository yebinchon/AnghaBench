
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_softc {int bqueue_mtx; int bqueue_down; } ;
struct g_geom {struct gv_softc* softc; } ;
struct bio {int bio_cmd; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;






 int EOPNOTSUPP ;
 int bioq_disksort (int ,struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct gv_softc*) ;

void
gv_start(struct bio *bp)
{
 struct g_geom *gp;
 struct gv_softc *sc;

 gp = bp->bio_to->geom;
 sc = gp->softc;

 switch (bp->bio_cmd) {
 case 129:
 case 128:
 case 131:
  break;
 case 130:
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
 mtx_lock(&sc->bqueue_mtx);
 bioq_disksort(sc->bqueue_down, bp);
 wakeup(sc);
 mtx_unlock(&sc->bqueue_mtx);
}
