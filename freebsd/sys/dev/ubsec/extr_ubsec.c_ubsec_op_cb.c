
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ubsec_operand {int nsegs; int segs; scalar_t__ mapsize; } ;
typedef int seg ;
typedef scalar_t__ bus_size_t ;
typedef int bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 int UBS_MAX_SCATTER ;
 int bcopy (int *,int ,int) ;
 int printf (char*,int,int,int) ;
 scalar_t__ ubsec_debug ;

__attribute__((used)) static void
ubsec_op_cb(void *arg, bus_dma_segment_t *seg, int nsegs, bus_size_t mapsize, int error)
{
 struct ubsec_operand *op = arg;

 KASSERT(nsegs <= UBS_MAX_SCATTER,
  ("Too many DMA segments returned when mapping operand"));





 if (error != 0)
  return;
 op->mapsize = mapsize;
 op->nsegs = nsegs;
 bcopy(seg, op->segs, nsegs * sizeof (seg[0]));
}
