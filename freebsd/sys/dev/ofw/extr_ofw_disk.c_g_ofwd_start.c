
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ofwd_softc {int ofwd_queue_mtx; int ofwd_bio_queue; } ;
struct bio {TYPE_2__* bio_to; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct ofwd_softc* softc; } ;


 int bioq_disksort (int *,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct ofwd_softc*) ;

__attribute__((used)) static void
g_ofwd_start(struct bio *bp)
{
 struct ofwd_softc *sc;

 sc = bp->bio_to->geom->softc;
 mtx_lock(&sc->ofwd_queue_mtx);
 bioq_disksort(&sc->ofwd_bio_queue, bp);
 mtx_unlock(&sc->ofwd_queue_mtx);
 wakeup(sc);
}
