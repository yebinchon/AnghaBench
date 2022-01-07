
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_mountver_softc {int sc_mtx; int sc_queue; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct bio {TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int TAILQ_INSERT_TAIL (int *,struct bio*,int ) ;
 int bio_queue ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_mountver_queue(struct bio *bp)
{
 struct g_mountver_softc *sc;
 struct g_geom *gp;

 gp = bp->bio_to->geom;
 sc = gp->softc;

 mtx_lock(&sc->sc_mtx);
 TAILQ_INSERT_TAIL(&sc->sc_queue, bp, bio_queue);
 mtx_unlock(&sc->sc_mtx);
}
