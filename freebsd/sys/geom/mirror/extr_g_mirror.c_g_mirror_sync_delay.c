
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int sc_sync_delayed; } ;
struct bio {int dummy; } ;


 int G_MIRROR_LOGREQ (int,struct bio*,char*) ;
 int TAILQ_INSERT_TAIL (int *,struct bio*,int ) ;
 int bio_queue ;

__attribute__((used)) static void
g_mirror_sync_delay(struct g_mirror_softc *sc, struct bio *bp)
{

 G_MIRROR_LOGREQ(2, bp, "Delaying synchronization request.");
 TAILQ_INSERT_TAIL(&sc->sc_sync_delayed, bp, bio_queue);
}
