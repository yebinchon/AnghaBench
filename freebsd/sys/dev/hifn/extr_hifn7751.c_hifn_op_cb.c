
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_operand {int nsegs; int segs; int mapsize; } ;
typedef int seg ;
typedef int bus_size_t ;
typedef int bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 int MAX_SCATTER ;
 int bcopy (int *,int ,int) ;

__attribute__((used)) static void
hifn_op_cb(void* arg, bus_dma_segment_t *seg, int nsegs, bus_size_t mapsize, int error)
{
 struct hifn_operand *op = arg;

 KASSERT(nsegs <= MAX_SCATTER,
  ("hifn_op_cb: too many DMA segments (%u > %u) "
   "returned when mapping operand", nsegs, MAX_SCATTER));
 op->mapsize = mapsize;
 op->nsegs = nsegs;
 bcopy(seg, op->segs, nsegs * sizeof (seg[0]));
}
