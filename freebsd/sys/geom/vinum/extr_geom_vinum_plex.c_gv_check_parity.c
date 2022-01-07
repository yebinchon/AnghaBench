
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gv_sd {TYPE_1__* drive_sc; } ;
struct gv_raid5_packet {int length; struct bio* parity; struct bio* waiting; } ;
struct gv_plex {int dummy; } ;
struct bio {scalar_t__* bio_data; TYPE_2__* bio_parent; struct gv_sd* bio_caller1; } ;
struct TYPE_4__ {int bio_pflags; int bio_inbed; int bio_error; } ;
struct TYPE_3__ {int consumer; } ;


 int EAGAIN ;
 int GV_BIO_PARITY ;
 int g_destroy_bio (struct bio*) ;
 int g_io_request (struct bio*,int ) ;

__attribute__((used)) static int
gv_check_parity(struct gv_plex *p, struct bio *bp, struct gv_raid5_packet *wp)
{
 struct bio *pbp;
 struct gv_sd *s;
 int err, finished, i;

 err = 0;
 finished = 1;

 if (wp->waiting != ((void*)0)) {
  pbp = wp->waiting;
  wp->waiting = ((void*)0);
  s = pbp->bio_caller1;
  g_io_request(pbp, s->drive_sc->consumer);
  finished = 0;

 } else if (wp->parity != ((void*)0)) {
  pbp = wp->parity;
  wp->parity = ((void*)0);


  for (i = 0; i < wp->length; i++) {
   if (bp->bio_data[i] != pbp->bio_data[i]) {
    err = 1;
    break;
   }
  }


  if (err) {
   bp->bio_parent->bio_error = EAGAIN;


   if (bp->bio_parent->bio_pflags & GV_BIO_PARITY) {
    s = pbp->bio_caller1;
    g_io_request(pbp, s->drive_sc->consumer);
    finished = 0;
   }
  }





  if (finished) {
   bp->bio_parent->bio_inbed++;
   g_destroy_bio(pbp);
  }

 }

 return (finished);
}
