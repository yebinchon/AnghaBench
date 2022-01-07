
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {TYPE_1__* bio_disk; } ;
struct at45d_softc {int bio_queue; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int AT45D_LOCK (struct at45d_softc*) ;
 int AT45D_UNLOCK (struct at45d_softc*) ;
 int bioq_disksort (int *,struct bio*) ;
 int wakeup (struct at45d_softc*) ;

__attribute__((used)) static void
at45d_strategy(struct bio *bp)
{
 struct at45d_softc *sc;

 sc = (struct at45d_softc *)bp->bio_disk->d_drv1;
 AT45D_LOCK(sc);
 bioq_disksort(&sc->bio_queue, bp);
 wakeup(sc);
 AT45D_UNLOCK(sc);
}
