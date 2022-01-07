
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_plex {int stripesize; int name; struct gv_softc* vinumconf; } ;
struct bio {int bio_pflags; int bio_offset; void* bio_data; struct gv_plex* bio_caller1; int bio_length; scalar_t__ bio_error; int bio_done; int bio_cmd; } ;
typedef int off_t ;


 int BIO_WRITE ;
 int GV_BIO_CHECK ;
 int GV_BIO_MALLOC ;
 int GV_BIO_REBUILD ;
 int GV_DFLT_SYNCSIZE ;
 int G_VINUM_DEBUG (int ,char*,...) ;
 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int M_ZERO ;
 void* g_malloc (int ,int) ;
 struct bio* g_new_bio () ;
 int gv_done ;
 int gv_post_bio (struct gv_softc*,struct bio*) ;

void
gv_parity_request(struct gv_plex *p, int flags, off_t offset)
{
 struct gv_softc *sc;
 struct bio *bp;

 KASSERT(p != ((void*)0), ("gv_parity_request: NULL p"));
 sc = p->vinumconf;
 KASSERT(sc != ((void*)0), ("gv_parity_request: NULL sc"));

 bp = g_new_bio();
 if (bp == ((void*)0)) {
  G_VINUM_DEBUG(0, "rebuild of %s failed creating bio: "
      "out of memory", p->name);
  return;
 }

 bp->bio_cmd = BIO_WRITE;
 bp->bio_done = gv_done;
 bp->bio_error = 0;
 bp->bio_length = p->stripesize;
 bp->bio_caller1 = p;





 if (flags & GV_BIO_REBUILD)
  bp->bio_data = g_malloc(GV_DFLT_SYNCSIZE, M_WAITOK);
 else if (flags & GV_BIO_CHECK)
  bp->bio_data = g_malloc(p->stripesize, M_WAITOK | M_ZERO);
 else {
  G_VINUM_DEBUG(0, "invalid flags given in rebuild");
  return;
 }

 bp->bio_pflags = flags;
 bp->bio_pflags |= GV_BIO_MALLOC;


 bp->bio_offset = offset;
 gv_post_bio(sc, bp);

}
