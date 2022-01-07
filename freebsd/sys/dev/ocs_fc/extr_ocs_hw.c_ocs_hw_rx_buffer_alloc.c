
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_t ;
struct TYPE_7__ {int * os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_8__ {int rqindex; int dma; } ;
typedef TYPE_2__ ocs_hw_rq_buffer_t ;


 int OCS_MIN_DMA_ALIGNMENT ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 scalar_t__ ocs_dma_alloc (int *,int *,int,int ) ;
 int ocs_free (int *,TYPE_2__*,int) ;
 int ocs_log_err (int *,char*) ;
 TYPE_2__* ocs_malloc (int *,int,int) ;

__attribute__((used)) static ocs_hw_rq_buffer_t *
ocs_hw_rx_buffer_alloc(ocs_hw_t *hw, uint32_t rqindex, uint32_t count, uint32_t size)
{
 ocs_t *ocs = hw->os;
 ocs_hw_rq_buffer_t *rq_buf = ((void*)0);
 ocs_hw_rq_buffer_t *prq;
 uint32_t i;

 if (count != 0) {
  rq_buf = ocs_malloc(hw->os, sizeof(*rq_buf) * count, OCS_M_NOWAIT | OCS_M_ZERO);
  if (rq_buf == ((void*)0)) {
   ocs_log_err(hw->os, "Failure to allocate unsolicited DMA trackers\n");
   return ((void*)0);
  }

  for (i = 0, prq = rq_buf; i < count; i ++, prq++) {
   prq->rqindex = rqindex;
   if (ocs_dma_alloc(ocs, &prq->dma, size, OCS_MIN_DMA_ALIGNMENT)) {
    ocs_log_err(hw->os, "DMA allocation failed\n");
    ocs_free(hw->os, rq_buf, sizeof(*rq_buf) * count);
    rq_buf = ((void*)0);
    break;
   }
  }
 }
 return rq_buf;
}
