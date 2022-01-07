
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bio* jj_queue; } ;
struct g_journal_softc {scalar_t__ sc_copy_in_progress; int sc_dconsumer; int sc_copy_queue; int sc_mtx; TYPE_1__ sc_inactive; } ;
struct bio {scalar_t__ bio_joffset; int * bio_data; int bio_cflags; } ;


 struct bio* GJQ_FIRST (struct bio*) ;
 int GJQ_INSERT_AFTER (struct bio*,struct bio*,struct bio*) ;
 int GJQ_INSERT_HEAD (int ,struct bio*) ;
 int GJQ_REMOVE (struct bio*,struct bio*) ;
 int GJ_BIO_COPY ;
 int GJ_LOGREQ (int,struct bio*,char*) ;
 int g_io_request (struct bio*,int ) ;
 scalar_t__ g_journal_do_optimize ;
 scalar_t__ g_journal_optimize (struct bio*) ;
 scalar_t__ g_journal_parallel_copies ;
 int g_journal_read_first (struct g_journal_softc*,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_journal_copy_send(struct g_journal_softc *sc)
{
 struct bio *bioq, *bp, *lbp;

 bioq = lbp = ((void*)0);
 mtx_lock(&sc->sc_mtx);
 for (; sc->sc_copy_in_progress < g_journal_parallel_copies;) {
  bp = GJQ_FIRST(sc->sc_inactive.jj_queue);
  if (bp == ((void*)0))
   break;
  GJQ_REMOVE(sc->sc_inactive.jj_queue, bp);
  sc->sc_copy_in_progress++;
  GJQ_INSERT_AFTER(bioq, bp, lbp);
  lbp = bp;
 }
 mtx_unlock(&sc->sc_mtx);
 if (g_journal_do_optimize)
  sc->sc_copy_in_progress += g_journal_optimize(bioq);
 while ((bp = GJQ_FIRST(bioq)) != ((void*)0)) {
  GJQ_REMOVE(bioq, bp);
  GJQ_INSERT_HEAD(sc->sc_copy_queue, bp);
  bp->bio_cflags = GJ_BIO_COPY;
  if (bp->bio_data == ((void*)0))
   g_journal_read_first(sc, bp);
  else {
   bp->bio_joffset = 0;
   GJ_LOGREQ(4, bp, "SEND");
   g_io_request(bp, sc->sc_dconsumer);
  }
 }
}
