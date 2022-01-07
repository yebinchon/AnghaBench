
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxq_refill_cb_arg {int error; int nseg; int seg; } ;
typedef int bus_dma_segment_t ;



__attribute__((used)) static void
_rxq_refill_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct rxq_refill_cb_arg *cb_arg = arg;

 cb_arg->error = error;
 cb_arg->seg = segs[0];
 cb_arg->nseg = nseg;
}
