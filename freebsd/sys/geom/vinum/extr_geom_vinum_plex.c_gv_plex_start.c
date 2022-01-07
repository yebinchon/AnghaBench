
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_sd {TYPE_1__* drive_sc; } ;
struct gv_raid5_packet {scalar_t__ length; int lockbase; int bits; } ;
struct gv_plex {scalar_t__ org; int bqueue; int wqueue; int packets; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; struct gv_sd* bio_caller1; int bio_pflags; int * bio_caller2; int bio_data; } ;
typedef scalar_t__ off_t ;
typedef int caddr_t ;
struct TYPE_2__ {int consumer; } ;


 int GV_BIO_ONHOLD ;
 scalar_t__ GV_PLEX_RAID5 ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct gv_raid5_packet*,int ) ;
 int bioq_disksort (int ,struct bio*) ;
 struct bio* bioq_takefirst (int ) ;
 int g_free (struct gv_raid5_packet*) ;
 int g_io_request (struct bio*,int ) ;
 scalar_t__ gv_plex_normal_request (struct gv_plex*,struct bio*,scalar_t__,scalar_t__,int ) ;
 struct gv_raid5_packet* gv_raid5_start (struct gv_plex*,struct bio*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ gv_stripe_active (struct gv_plex*,struct bio*) ;
 int list ;

void
gv_plex_start(struct gv_plex *p, struct bio *bp)
{
 struct bio *cbp;
 struct gv_sd *s;
 struct gv_raid5_packet *wp;
 caddr_t addr;
 off_t bcount, boff, len;

 bcount = bp->bio_length;
 addr = bp->bio_data;
 boff = bp->bio_offset;


 while (bcount > 0) {
  wp = ((void*)0);





  if (p->org == GV_PLEX_RAID5) {
   wp = gv_raid5_start(p, bp, addr, boff, bcount);
    if (wp == ((void*)0))
     return;

   len = wp->length;

   if (TAILQ_EMPTY(&wp->bits))
    g_free(wp);
   else if (wp->lockbase != -1)
    TAILQ_INSERT_TAIL(&p->packets, wp, list);





  } else {
   len = gv_plex_normal_request(p, bp, boff, bcount, addr);
  }
  if (len < 0)
   return;

  bcount -= len;
  addr += len;
  boff += len;
 }






 cbp = bioq_takefirst(p->bqueue);
 while (cbp != ((void*)0)) {






  if (cbp->bio_caller2 != ((void*)0) && gv_stripe_active(p, cbp)) {

   cbp->bio_pflags |= GV_BIO_ONHOLD;
   bioq_disksort(p->wqueue, cbp);
  } else {
   s = cbp->bio_caller1;
   g_io_request(cbp, s->drive_sc->consumer);
  }
  cbp = bioq_takefirst(p->bqueue);
 }
}
