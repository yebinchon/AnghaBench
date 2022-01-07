
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_journal_softc {int sc_mtx; int sc_back_queue; } ;
struct bio {TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;


 int bioq_insert_tail (int *,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_journal_softc*) ;

__attribute__((used)) static void
g_journal_std_done(struct bio *bp)
{
 struct g_journal_softc *sc;

 sc = bp->bio_from->geom->softc;
 mtx_lock(&sc->sc_mtx);
 bioq_insert_tail(&sc->sc_back_queue, bp);
 wakeup(sc);
 mtx_unlock(&sc->sc_mtx);
}
