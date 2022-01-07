
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mambodisk_softc {int bio_queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int MBODISK_LOCK (struct mambodisk_softc*) ;
 int MBODISK_UNLOCK (struct mambodisk_softc*) ;
 int bioq_disksort (int *,struct bio*) ;
 int wakeup (struct mambodisk_softc*) ;

__attribute__((used)) static void
mambodisk_strategy(struct bio *bp)
{
 struct mambodisk_softc *sc;

 sc = (struct mambodisk_softc *)bp->bio_disk->d_drv1;
 MBODISK_LOCK(sc);
 bioq_disksort(&sc->bio_queue, bp);
 wakeup(sc);
 MBODISK_UNLOCK(sc);
}
