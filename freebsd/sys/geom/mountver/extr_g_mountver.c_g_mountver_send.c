
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_geom {int consumer; } ;
struct bio {int bio_done; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 int ENOMEM ;
 int LIST_FIRST (int *) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,int ) ;
 int g_mountver_done ;

__attribute__((used)) static void
g_mountver_send(struct bio *bp)
{
 struct g_geom *gp;
 struct bio *cbp;

 gp = bp->bio_to->geom;

 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }

 cbp->bio_done = g_mountver_done;
 g_io_request(cbp, LIST_FIRST(&gp->consumer));
}
