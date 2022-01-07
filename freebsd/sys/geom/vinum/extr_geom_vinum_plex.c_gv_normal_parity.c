
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gv_sd {TYPE_1__* drive_sc; } ;
struct gv_raid5_packet {int length; struct bio* parity; struct bio* waiting; } ;
struct gv_plex {int dummy; } ;
struct bio {struct gv_sd* bio_caller1; int * bio_data; } ;
struct TYPE_2__ {int consumer; } ;


 int g_io_request (struct bio*,int ) ;

__attribute__((used)) static int
gv_normal_parity(struct gv_plex *p, struct bio *bp, struct gv_raid5_packet *wp)
{
 struct bio *cbp, *pbp;
 struct gv_sd *s;
 int finished, i;

 finished = 1;

 if (wp->waiting != ((void*)0)) {
  pbp = wp->waiting;
  wp->waiting = ((void*)0);
  cbp = wp->parity;
  for (i = 0; i < wp->length; i++)
   cbp->bio_data[i] ^= pbp->bio_data[i];
  s = pbp->bio_caller1;
  g_io_request(pbp, s->drive_sc->consumer);
  finished = 0;

 } else if (wp->parity != ((void*)0)) {
  cbp = wp->parity;
  wp->parity = ((void*)0);
  s = cbp->bio_caller1;
  g_io_request(cbp, s->drive_sc->consumer);
  finished = 0;
 }

 return (finished);
}
