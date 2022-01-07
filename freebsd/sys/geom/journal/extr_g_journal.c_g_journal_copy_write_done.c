
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_journal_softc {scalar_t__ sc_copy_in_progress; scalar_t__ sc_journal_copying; int sc_copy_queue; } ;
struct bio {scalar_t__ bio_cflags; scalar_t__ bio_error; int bio_length; int bio_data; TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;


 int GJQ_REMOVE (int ,struct bio*) ;
 scalar_t__ GJ_BIO_COPY ;
 int GJ_DEBUG (int,char*) ;
 int GJ_LOGREQ (int,struct bio*,char*,...) ;
 int KASSERT (int,char*) ;
 int g_destroy_bio (struct bio*) ;
 int gj_free (int ,int ) ;

__attribute__((used)) static void
g_journal_copy_write_done(struct bio *bp)
{
 struct g_journal_softc *sc;

 KASSERT(bp->bio_cflags == GJ_BIO_COPY,
     ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_COPY));

 sc = bp->bio_from->geom->softc;
 sc->sc_copy_in_progress--;

 if (bp->bio_error != 0) {
  GJ_LOGREQ(0, bp, "[copy] Error while writing data (error=%d)",
      bp->bio_error);
 }
 GJQ_REMOVE(sc->sc_copy_queue, bp);
 gj_free(bp->bio_data, bp->bio_length);
 GJ_LOGREQ(4, bp, "DONE");
 g_destroy_bio(bp);

 if (sc->sc_copy_in_progress == 0) {



  GJ_DEBUG(1, "Data has been copied.");
  sc->sc_journal_copying = 0;
 }
}
