
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_queue_mtx; int sc_queue; int sc_regular_delayed; } ;
struct bio {int dummy; } ;


 int G_MIRROR_DEBUG (int,char*) ;
 int TAILQ_CONCAT (int *,int *,int ) ;
 struct bio* TAILQ_FIRST (int *) ;
 int TAILQ_SWAP (int *,int *,int ,int ) ;
 int bio ;
 int bio_queue ;
 scalar_t__ g_mirror_sync_collision (struct g_mirror_softc*,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_mirror_regular_release(struct g_mirror_softc *sc)
{
 struct bio *bp;

 if ((bp = TAILQ_FIRST(&sc->sc_regular_delayed)) == ((void*)0))
  return;
 if (g_mirror_sync_collision(sc, bp))
  return;

 G_MIRROR_DEBUG(2, "Requeuing regular requests after collision.");
 mtx_lock(&sc->sc_queue_mtx);
 TAILQ_CONCAT(&sc->sc_regular_delayed, &sc->sc_queue, bio_queue);
 TAILQ_SWAP(&sc->sc_regular_delayed, &sc->sc_queue, bio, bio_queue);
 mtx_unlock(&sc->sc_queue_mtx);
}
