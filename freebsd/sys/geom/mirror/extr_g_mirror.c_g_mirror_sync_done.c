
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_mirror_softc {int sc_queue_mtx; int sc_queue; } ;
struct bio {int bio_cflags; TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_mirror_softc* softc; } ;


 int G_MIRROR_BIO_FLAG_SYNC ;
 int G_MIRROR_LOGREQ (int,struct bio*,char*) ;
 int TAILQ_INSERT_TAIL (int *,struct bio*,int ) ;
 int bio_queue ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_mirror_softc*) ;

__attribute__((used)) static void
g_mirror_sync_done(struct bio *bp)
{
 struct g_mirror_softc *sc;

 G_MIRROR_LOGREQ(3, bp, "Synchronization request delivered.");
 sc = bp->bio_from->geom->softc;
 bp->bio_cflags = G_MIRROR_BIO_FLAG_SYNC;
 mtx_lock(&sc->sc_queue_mtx);
 TAILQ_INSERT_TAIL(&sc->sc_queue, bp, bio_queue);
 mtx_unlock(&sc->sc_queue_mtx);
 wakeup(sc);
}
