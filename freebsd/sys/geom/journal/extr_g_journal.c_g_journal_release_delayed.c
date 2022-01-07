
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {scalar_t__ sc_flush_count; int sc_delayed_count; int sc_delayed_queue; } ;
struct bio {int dummy; } ;


 struct bio* bioq_takefirst (int *) ;
 scalar_t__ g_journal_accept_immediately ;
 int g_journal_add_current (struct g_journal_softc*,struct bio*) ;

__attribute__((used)) static void
g_journal_release_delayed(struct g_journal_softc *sc)
{
 struct bio *bp;

 for (;;) {

  if (sc->sc_flush_count >= g_journal_accept_immediately)
   return;
  bp = bioq_takefirst(&sc->sc_delayed_queue);
  if (bp == ((void*)0))
   return;
  sc->sc_delayed_count--;
  g_journal_add_current(sc, bp);
 }
}
