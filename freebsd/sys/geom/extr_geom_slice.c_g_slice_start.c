
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct g_slicer {size_t nhotspot; int (* start ) (struct bio*) ;struct g_slice* slices; int hot; struct g_slice_hot* hotspot; } ;
struct g_slice_hot {int ract; int wact; int dact; scalar_t__ offset; scalar_t__ length; } ;
struct g_slice {scalar_t__ length; scalar_t__ offset; } ;
struct g_provider {int index; struct g_geom* geom; } ;
struct g_kerneldump {scalar_t__ length; scalar_t__ offset; } ;
struct g_geom {int consumer; struct g_slicer* softc; } ;
struct g_consumer {int dummy; } ;
struct bio {int bio_cmd; void* bio_done; scalar_t__ bio_data; int bio_attribute; scalar_t__ bio_offset; scalar_t__ bio_length; struct g_provider* bio_to; } ;
typedef scalar_t__ off_t ;







 int EINVAL ;
 int EJUSTRETURN ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EROFS ;




 struct g_consumer* LIST_FIRST (int *) ;
 int M_NOWAIT ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_io_deliver (struct bio*,int) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_post_event (int ,struct bio*,int ,struct g_geom*,int *) ;
 void* g_slice_done ;
 void* g_std_done ;
 int strcmp (char*,int ) ;
 int stub1 (struct bio*) ;
 int stub2 (struct bio*) ;

__attribute__((used)) static void
g_slice_start(struct bio *bp)
{
 struct bio *bp2;
 struct g_provider *pp;
 struct g_geom *gp;
 struct g_consumer *cp;
 struct g_slicer *gsp;
 struct g_slice *gsl;
 struct g_slice_hot *ghp;
 int idx, error;
 u_int m_index;
 off_t t;

 pp = bp->bio_to;
 gp = pp->geom;
 gsp = gp->softc;
 cp = LIST_FIRST(&gp->consumer);
 idx = pp->index;
 gsl = &gsp->slices[idx];
 switch(bp->bio_cmd) {
 case 133:
 case 132:
 case 136:
  if (bp->bio_offset > gsl->length) {
   g_io_deliver(bp, EINVAL);
   return;
  }




  t = bp->bio_offset + gsl->offset;
  for (m_index = 0; m_index < gsp->nhotspot; m_index++) {
   ghp = &gsp->hotspot[m_index];
   if (t >= ghp->offset + ghp->length)
    continue;
   if (t + bp->bio_length <= ghp->offset)
    continue;
   switch(bp->bio_cmd) {
   case 133: idx = ghp->ract; break;
   case 132: idx = ghp->wact; break;
   case 136: idx = ghp->dact; break;
   }
   switch(idx) {
   case 131:

    continue;
   case 129:
    g_io_deliver(bp, EROFS);
    return;
   case 128:
    error = gsp->start(bp);
    if (error && error != EJUSTRETURN)
     g_io_deliver(bp, error);
    return;
   case 130:
    error = g_post_event(gsp->hot, bp, M_NOWAIT,
        gp, ((void*)0));
    if (error)
     g_io_deliver(bp, error);
    return;
   }
   break;
  }
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
 case 134:

  if (gsp->start != ((void*)0) && gsp->start(bp))
   return;
  if (!strcmp("GEOM::ident", bp->bio_attribute)) {
   bp2 = g_clone_bio(bp);
   if (bp2 == ((void*)0)) {
    g_io_deliver(bp, ENOMEM);
    return;
   }
   bp2->bio_done = g_slice_done;
   g_io_request(bp2, cp);
   return;
  }
  if (!strcmp("GEOM::kerneldump", bp->bio_attribute)) {
   struct g_kerneldump *gkd;

   gkd = (struct g_kerneldump *)bp->bio_data;
   gkd->offset += gsp->slices[idx].offset;
   if (gkd->length > gsp->slices[idx].length)
    gkd->length = gsp->slices[idx].length;

  }

 case 135:
  bp2 = g_clone_bio(bp);
  if (bp2 == ((void*)0)) {
   g_io_deliver(bp, ENOMEM);
   return;
  }
  bp2->bio_done = g_std_done;
  g_io_request(bp2, cp);
  break;
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
}
