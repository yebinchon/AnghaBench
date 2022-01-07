
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int bqueue_mtx; int bqueue_down; } ;
struct bio {int dummy; } ;


 int KASSERT (int ,char*) ;
 int bioq_disksort (int ,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct gv_softc*) ;

__attribute__((used)) static void
gv_post_bio(struct gv_softc *sc, struct bio *bp)
{

 KASSERT(sc != ((void*)0), ("NULL sc"));
 KASSERT(bp != ((void*)0), ("NULL bp"));
 mtx_lock(&sc->bqueue_mtx);
 bioq_disksort(sc->bqueue_down, bp);
 wakeup(sc);
 mtx_unlock(&sc->bqueue_mtx);
}
