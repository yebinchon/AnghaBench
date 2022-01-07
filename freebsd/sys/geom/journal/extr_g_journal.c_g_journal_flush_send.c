
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {scalar_t__ sc_flush_in_progress; struct bio* sc_flush_queue; int sc_flush_count; struct g_consumer* sc_jconsumer; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_joffset; scalar_t__ bio_offset; } ;


 struct bio* GJQ_FIRST (struct bio*) ;
 int GJQ_INSERT_AFTER (struct bio*,struct bio*,struct bio*) ;
 int GJQ_REMOVE (struct bio*,struct bio*) ;
 int GJ_LOGREQ (int,struct bio*,char*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 scalar_t__ g_journal_do_optimize ;
 scalar_t__ g_journal_optimize (struct bio*) ;
 scalar_t__ g_journal_parallel_flushes ;
 int g_journal_release_delayed (struct g_journal_softc*) ;

__attribute__((used)) static void
g_journal_flush_send(struct g_journal_softc *sc)
{
 struct g_consumer *cp;
 struct bio *bioq, *bp, *lbp;

 cp = sc->sc_jconsumer;
 bioq = lbp = ((void*)0);
 while (sc->sc_flush_in_progress < g_journal_parallel_flushes) {

  bp = GJQ_FIRST(sc->sc_flush_queue);
  if (bp != ((void*)0)) {
   GJQ_REMOVE(sc->sc_flush_queue, bp);
   sc->sc_flush_count--;
   bp->bio_offset = bp->bio_joffset;
   bp->bio_joffset = 0;
   sc->sc_flush_in_progress++;
   GJQ_INSERT_AFTER(bioq, bp, lbp);
   lbp = bp;
  }

  g_journal_release_delayed(sc);

  if (GJQ_FIRST(sc->sc_flush_queue) == ((void*)0))
   break;
 }
 if (g_journal_do_optimize)
  sc->sc_flush_in_progress += g_journal_optimize(bioq);
 while ((bp = GJQ_FIRST(bioq)) != ((void*)0)) {
  GJQ_REMOVE(bioq, bp);
  GJ_LOGREQ(3, bp, "Flush request send");
  g_io_request(bp, cp);
 }
}
