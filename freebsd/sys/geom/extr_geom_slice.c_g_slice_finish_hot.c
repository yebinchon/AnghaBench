
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_slicer {struct g_slice* slices; } ;
struct g_slice {scalar_t__ length; scalar_t__ offset; } ;
struct g_geom {int consumer; struct g_slicer* softc; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; int bio_done; TYPE_1__* bio_to; int * bio_from; } ;
struct TYPE_2__ {int index; struct g_geom* geom; } ;


 int ENOMEM ;
 int KASSERT (int ,char*) ;
 struct g_consumer* LIST_FIRST (int *) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_std_done ;

void
g_slice_finish_hot(struct bio *bp)
{
 struct bio *bp2;
 struct g_geom *gp;
 struct g_consumer *cp;
 struct g_slicer *gsp;
 struct g_slice *gsl;
 int idx;

 KASSERT(bp->bio_to != ((void*)0),
     ("NULL bio_to in g_slice_finish_hot(%p)", bp));
 KASSERT(bp->bio_from != ((void*)0),
     ("NULL bio_from in g_slice_finish_hot(%p)", bp));
 gp = bp->bio_to->geom;
 gsp = gp->softc;
 cp = LIST_FIRST(&gp->consumer);
 KASSERT(cp != ((void*)0), ("NULL consumer in g_slice_finish_hot(%p)", bp));
 idx = bp->bio_to->index;
 gsl = &gsp->slices[idx];

 bp2 = g_clone_bio(bp);
 if (bp2 == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 if (bp2->bio_offset + bp2->bio_length > gsl->length)
  bp2->bio_length = gsl->length - bp2->bio_offset;
 bp2->bio_done = g_std_done;
 bp2->bio_offset += gsl->offset;
 g_io_request(bp2, cp);
 return;
}
