
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct g_journal_softc {scalar_t__ sc_delayed_count; scalar_t__ sc_flush_count; TYPE_1__ sc_delayed_queue; } ;
struct bio {int dummy; } ;


 int GJ_LOGREQ (int,struct bio*,char*) ;
 int KASSERT (int ,char*) ;
 int TAILQ_EMPTY (int *) ;
 int bioq_insert_tail (TYPE_1__*,struct bio*) ;
 scalar_t__ g_journal_accept_immediately ;
 int g_journal_add_current (struct g_journal_softc*,struct bio*) ;

__attribute__((used)) static void
g_journal_add_request(struct g_journal_softc *sc, struct bio *bp)
{




 if (sc->sc_delayed_count > 0 ||
     sc->sc_flush_count >= g_journal_accept_immediately) {
  GJ_LOGREQ(4, bp, "DELAYED");
  bioq_insert_tail(&sc->sc_delayed_queue, bp);
  sc->sc_delayed_count++;
  return;
 }

 KASSERT(TAILQ_EMPTY(&sc->sc_delayed_queue.queue),
     ("DELAYED queue not empty."));
 g_journal_add_current(sc, bp);
}
