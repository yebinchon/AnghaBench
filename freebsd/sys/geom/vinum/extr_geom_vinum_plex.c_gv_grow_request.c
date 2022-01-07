
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_plex {int name; struct gv_softc* vinumconf; } ;
struct bio {int bio_cmd; int * bio_data; int bio_pflags; void* bio_length; void* bio_offset; struct gv_plex* bio_caller1; scalar_t__ bio_error; int bio_done; } ;
typedef void* off_t ;
typedef int * caddr_t ;


 int ENOMEM ;
 int GV_BIO_GROW ;
 int GV_BIO_MALLOC ;
 int G_VINUM_DEBUG (int ,char*,int ) ;
 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int * g_malloc (void*,int ) ;
 struct bio* g_new_bio () ;
 int gv_done ;
 int gv_post_bio (struct gv_softc*,struct bio*) ;

int
gv_grow_request(struct gv_plex *p, off_t offset, off_t length, int type,
    caddr_t data)
{
 struct gv_softc *sc;
 struct bio *bp;

 KASSERT(p != ((void*)0), ("gv_grow_request: NULL p"));
 sc = p->vinumconf;
 KASSERT(sc != ((void*)0), ("gv_grow_request: NULL sc"));

 bp = g_new_bio();
 if (bp == ((void*)0)) {
  G_VINUM_DEBUG(0, "grow of %s failed creating bio: "
      "out of memory", p->name);
  return (ENOMEM);
 }

 bp->bio_cmd = type;
 bp->bio_done = gv_done;
 bp->bio_error = 0;
 bp->bio_caller1 = p;
 bp->bio_offset = offset;
 bp->bio_length = length;
 bp->bio_pflags |= GV_BIO_GROW;
 if (data == ((void*)0))
  data = g_malloc(length, M_WAITOK);
 bp->bio_pflags |= GV_BIO_MALLOC;
 bp->bio_data = data;

 gv_post_bio(sc, bp);

 return (0);
}
