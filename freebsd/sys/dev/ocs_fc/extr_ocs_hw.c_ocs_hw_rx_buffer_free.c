
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ocs_t ;
struct TYPE_6__ {int * os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int dma; } ;
typedef TYPE_2__ ocs_hw_rq_buffer_t ;


 int ocs_dma_free (int *,int *) ;
 int ocs_free (int *,TYPE_2__*,int) ;

__attribute__((used)) static void
ocs_hw_rx_buffer_free(ocs_hw_t *hw, ocs_hw_rq_buffer_t *rq_buf, uint32_t count)
{
 ocs_t *ocs = hw->os;
 uint32_t i;
 ocs_hw_rq_buffer_t *prq;

 if (rq_buf != ((void*)0)) {
  for (i = 0, prq = rq_buf; i < count; i++, prq++) {
   ocs_dma_free(ocs, &prq->dma);
  }
  ocs_free(hw->os, rq_buf, sizeof(*rq_buf) * count);
 }
}
