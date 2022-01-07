
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mx25l_softc {int sc_bio_queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int M25PXX_LOCK (struct mx25l_softc*) ;
 int M25PXX_UNLOCK (struct mx25l_softc*) ;
 int bioq_disksort (int *,struct bio*) ;
 int wakeup (struct mx25l_softc*) ;

__attribute__((used)) static void
mx25l_strategy(struct bio *bp)
{
 struct mx25l_softc *sc;

 sc = (struct mx25l_softc *)bp->bio_disk->d_drv1;
 M25PXX_LOCK(sc);
 bioq_disksort(&sc->sc_bio_queue, bp);
 wakeup(sc);
 M25PXX_UNLOCK(sc);
}
