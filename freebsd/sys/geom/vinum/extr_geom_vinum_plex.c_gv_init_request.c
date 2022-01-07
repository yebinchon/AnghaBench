
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_sd {scalar_t__ initialized; int name; struct gv_drive* drive_sc; } ;
struct gv_drive {struct g_consumer* consumer; } ;
struct g_consumer {int dummy; } ;
struct bio {struct gv_sd* bio_caller1; void* bio_done; void* bio_offset; int bio_pflags; void* bio_length; scalar_t__ bio_error; int bio_data; int bio_cmd; } ;
typedef void* off_t ;
typedef int intmax_t ;
typedef int caddr_t ;


 int BIO_WRITE ;
 int GV_BIO_INIT ;
 int G_VINUM_DEBUG (int ,char*,int ,int ,int ) ;
 int KASSERT (int ,char*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 struct bio* g_new_bio () ;
 void* gv_done ;

void
gv_init_request(struct gv_sd *s, off_t start, caddr_t data, off_t length)
{
 struct gv_drive *d;
 struct g_consumer *cp;
 struct bio *bp, *cbp;

 KASSERT(s != ((void*)0), ("gv_init_request: NULL s"));
 d = s->drive_sc;
 KASSERT(d != ((void*)0), ("gv_init_request: NULL d"));
 cp = d->consumer;
 KASSERT(cp != ((void*)0), ("gv_init_request: NULL cp"));

 bp = g_new_bio();
 if (bp == ((void*)0)) {
  G_VINUM_DEBUG(0, "subdisk '%s' init: write failed at offset %jd"
      " (drive offset %jd); out of memory", s->name,
      (intmax_t)s->initialized, (intmax_t)start);
  return;
 }
 bp->bio_cmd = BIO_WRITE;
 bp->bio_data = data;
 bp->bio_done = gv_done;
 bp->bio_error = 0;
 bp->bio_length = length;
 bp->bio_pflags |= GV_BIO_INIT;
 bp->bio_offset = start;
 bp->bio_caller1 = s;


 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  G_VINUM_DEBUG(0, "subdisk '%s' init: write failed at offset %jd"
      " (drive offset %jd); out of memory", s->name,
      (intmax_t)s->initialized, (intmax_t)start);
  return;
 }
 cbp->bio_done = gv_done;
 cbp->bio_caller1 = s;

 g_io_request(cbp, cp);
}
