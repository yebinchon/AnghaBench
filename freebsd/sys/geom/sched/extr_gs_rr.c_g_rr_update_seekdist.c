
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_rr_queue {scalar_t__ q_lastoff; int q_bionum; int q_seekdist; } ;
struct bio {scalar_t__ bio_offset; int bio_length; } ;
typedef int off_t ;


 int g_savg_add_sample (int *,int) ;

__attribute__((used)) static inline void
g_rr_update_seekdist(struct g_rr_queue *qp, struct bio *bp)
{
 off_t dist;

 if (qp->q_lastoff > bp->bio_offset)
  dist = qp->q_lastoff - bp->bio_offset;
 else
  dist = bp->bio_offset - qp->q_lastoff;

 if (dist > (8192 * 8))
  dist = 8192 * 8;

 qp->q_lastoff = bp->bio_offset + bp->bio_length;

 if (qp->q_bionum > 7)
  g_savg_add_sample(&qp->q_seekdist, dist);
}
