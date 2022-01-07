
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {scalar_t__ sc_current_count; int sc_current_queue; } ;
struct bio {int bio_length; int bio_completed; } ;


 int GJ_LOGREQ (int,struct bio*,char*,scalar_t__) ;
 int M_WAITOK ;
 int g_io_deliver (struct bio*,int ) ;
 int g_journal_flush (struct g_journal_softc*) ;
 int g_journal_insert_bio (int *,struct bio*,int ) ;
 int g_journal_optimize (int ) ;
 scalar_t__ g_journal_record_entries ;

__attribute__((used)) static void
g_journal_add_current(struct g_journal_softc *sc, struct bio *bp)
{
 int n;

 GJ_LOGREQ(4, bp, "CURRENT %d", sc->sc_current_count);
 n = g_journal_insert_bio(&sc->sc_current_queue, bp, M_WAITOK);
 sc->sc_current_count += n;
 n = g_journal_optimize(sc->sc_current_queue);
 sc->sc_current_count += n;




 bp->bio_completed = bp->bio_length;
 g_io_deliver(bp, 0);
 if (sc->sc_current_count >= g_journal_record_entries) {



  g_journal_flush(sc);
 }
}
