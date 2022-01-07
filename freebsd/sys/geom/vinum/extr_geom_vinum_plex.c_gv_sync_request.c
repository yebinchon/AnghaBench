
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int dummy; } ;
struct gv_plex {int name; struct gv_softc* vinumconf; } ;
struct bio {int bio_cmd; int * bio_data; int bio_pflags; struct gv_plex* bio_caller2; struct gv_plex* bio_caller1; void* bio_offset; int bio_done; void* bio_length; } ;
typedef void* off_t ;
typedef int * caddr_t ;


 int ENOMEM ;
 int GV_BIO_MALLOC ;
 int GV_BIO_SYNCREQ ;
 int G_VINUM_DEBUG (int ,char*,int ,void*) ;
 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int * g_malloc (void*,int ) ;
 struct bio* g_new_bio () ;
 int gv_done ;
 int gv_post_bio (struct gv_softc*,struct bio*) ;

int
gv_sync_request(struct gv_plex *from, struct gv_plex *to, off_t offset,
    off_t length, int type, caddr_t data)
{
 struct gv_softc *sc;
 struct bio *bp;

 KASSERT(from != ((void*)0), ("NULL from"));
 KASSERT(to != ((void*)0), ("NULL to"));
 sc = from->vinumconf;
 KASSERT(sc != ((void*)0), ("NULL sc"));

 bp = g_new_bio();
 if (bp == ((void*)0)) {
  G_VINUM_DEBUG(0, "sync from '%s' failed at offset "
      " %jd; out of memory", from->name, offset);
  return (ENOMEM);
 }
 bp->bio_length = length;
 bp->bio_done = gv_done;
 bp->bio_pflags |= GV_BIO_SYNCREQ;
 bp->bio_offset = offset;
 bp->bio_caller1 = from;
 bp->bio_caller2 = to;
 bp->bio_cmd = type;
 if (data == ((void*)0))
  data = g_malloc(length, M_WAITOK);
 bp->bio_pflags |= GV_BIO_MALLOC;
 bp->bio_data = data;


 gv_post_bio(sc, bp);

 return (0);
}
