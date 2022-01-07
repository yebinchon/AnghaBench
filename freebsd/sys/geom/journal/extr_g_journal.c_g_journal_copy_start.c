
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {int sc_journal_copying; } ;


 int GJ_DEBUG (int,char*) ;
 int g_journal_copy_send (struct g_journal_softc*) ;
 int g_journal_metadata_update (struct g_journal_softc*) ;

__attribute__((used)) static void
g_journal_copy_start(struct g_journal_softc *sc)
{






 if (!sc->sc_journal_copying) {
  sc->sc_journal_copying = 1;
  GJ_DEBUG(1, "Starting copy of journal.");
  g_journal_metadata_update(sc);
 }
 g_journal_copy_send(sc);
}
