
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_journal_softc {struct g_consumer* sc_dconsumer; int sc_copy_in_progress; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_cflags; scalar_t__ bio_error; int bio_data; int bio_length; TYPE_3__* bio_to; struct bio* bio_parent; TYPE_2__* bio_from; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_1__* geom; } ;
struct TYPE_4__ {struct g_journal_softc* softc; } ;


 scalar_t__ GJ_BIO_COPY ;
 int GJ_DEBUG (int ,char*,int ,scalar_t__) ;
 int GJ_LOGREQ (int,struct bio*,char*) ;
 int KASSERT (int,char*) ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int gj_free (int ,int ) ;

__attribute__((used)) static int
g_journal_copy_read_done(struct bio *bp)
{
 struct g_journal_softc *sc;
 struct g_consumer *cp;
 struct bio *pbp;

 KASSERT(bp->bio_cflags == GJ_BIO_COPY,
     ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_COPY));

 sc = bp->bio_from->geom->softc;
 pbp = bp->bio_parent;

 if (bp->bio_error != 0) {
  GJ_DEBUG(0, "Error while reading data from %s (error=%d).",
      bp->bio_to->name, bp->bio_error);



  gj_free(bp->bio_data, bp->bio_length);
  g_destroy_bio(pbp);
  g_destroy_bio(bp);
  sc->sc_copy_in_progress--;
  return (1);
 }
 pbp->bio_data = bp->bio_data;
 cp = sc->sc_dconsumer;
 g_io_request(pbp, cp);
 GJ_LOGREQ(4, bp, "READ DONE");
 g_destroy_bio(bp);
 return (0);
}
