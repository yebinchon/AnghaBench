
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_geom {int provider; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_to; int bio_inbed; struct bio* bio_parent; TYPE_1__* bio_from; } ;
struct TYPE_2__ {struct g_geom* geom; } ;


 scalar_t__ ENXIO ;
 int KASSERT (int,char*) ;
 scalar_t__ LIST_FIRST (int *) ;
 int g_destroy_bio (struct bio*) ;
 int g_mountver_queue (struct bio*) ;
 int g_std_done (struct bio*) ;

__attribute__((used)) static void
g_mountver_done(struct bio *bp)
{
 struct g_geom *gp;
 struct bio *pbp;

 if (bp->bio_error != ENXIO) {
  g_std_done(bp);
  return;
 }







 gp = bp->bio_from->geom;

 pbp = bp->bio_parent;
 KASSERT(pbp->bio_to == LIST_FIRST(&gp->provider),
     ("parent request was for someone else"));
 g_destroy_bio(bp);
 pbp->bio_inbed++;
 g_mountver_queue(pbp);
}
