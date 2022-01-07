
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_busdma_context {int error; int completed; scalar_t__ abandoned; scalar_t__* addr; int buffer_dmamap; int buffer_dmat; int softc; } ;
struct TYPE_3__ {scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int M_MPR ;
 int bus_dmamap_unload (int ,int ) ;
 int free (struct mpr_busdma_context*,int ) ;
 int mpr_lock (int ) ;
 int mpr_unlock (int ) ;
 int wakeup (struct mpr_busdma_context*) ;

void
mpr_memaddr_wait_cb(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct mpr_busdma_context *ctx;
 int need_unload, need_free;

 ctx = (struct mpr_busdma_context *)arg;
 need_unload = 0;
 need_free = 0;

 mpr_lock(ctx->softc);
 ctx->error = error;
 ctx->completed = 1;
 if ((error == 0) && (ctx->abandoned == 0)) {
  *ctx->addr = segs[0].ds_addr;
 } else {
  if (nsegs != 0)
   need_unload = 1;
  if (ctx->abandoned != 0)
   need_free = 1;
 }
 if (need_free == 0)
  wakeup(ctx);

 mpr_unlock(ctx->softc);

 if (need_unload != 0) {
  bus_dmamap_unload(ctx->buffer_dmat,
      ctx->buffer_dmamap);
  *ctx->addr = 0;
 }

 if (need_free != 0)
  free(ctx, M_MPR);
}
