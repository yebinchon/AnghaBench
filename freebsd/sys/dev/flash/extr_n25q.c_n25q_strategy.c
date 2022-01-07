
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n25q_softc {int sc_bio_queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int N25Q_LOCK (struct n25q_softc*) ;
 int N25Q_UNLOCK (struct n25q_softc*) ;
 int bioq_disksort (int *,struct bio*) ;
 int wakeup (struct n25q_softc*) ;

__attribute__((used)) static void
n25q_strategy(struct bio *bp)
{
 struct n25q_softc *sc;

 sc = (struct n25q_softc *)bp->bio_disk->d_drv1;

 N25Q_LOCK(sc);
 bioq_disksort(&sc->sc_bio_queue, bp);
 wakeup(sc);
 N25Q_UNLOCK(sc);
}
