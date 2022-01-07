
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opalflash_softc {int sc_bio_queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int OPALFLASH_LOCK (struct opalflash_softc*) ;
 int OPALFLASH_UNLOCK (struct opalflash_softc*) ;
 int bioq_disksort (int *,struct bio*) ;
 int wakeup (struct opalflash_softc*) ;

__attribute__((used)) static void
opalflash_strategy(struct bio *bp)
{
 struct opalflash_softc *sc;

 sc = (struct opalflash_softc *)bp->bio_disk->d_drv1;
 OPALFLASH_LOCK(sc);
 bioq_disksort(&sc->sc_bio_queue, bp);
 wakeup(sc);
 OPALFLASH_UNLOCK(sc);
}
