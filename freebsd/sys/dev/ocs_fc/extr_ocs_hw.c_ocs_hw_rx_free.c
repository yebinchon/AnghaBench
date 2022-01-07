
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t hw_rq_count; TYPE_2__** hw_rq; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_6__ {int * payload_buf; int entry_count; int * hdr_buf; } ;
typedef TYPE_2__ hw_rq_t ;


 int ocs_hw_rx_buffer_free (TYPE_1__*,int *,int ) ;

void
ocs_hw_rx_free(ocs_hw_t *hw)
{
 hw_rq_t *rq;
 uint32_t i;


 for (i = 0; i < hw->hw_rq_count; i++) {
  rq = hw->hw_rq[i];
  if (rq != ((void*)0)) {
   ocs_hw_rx_buffer_free(hw, rq->hdr_buf, rq->entry_count);
   rq->hdr_buf = ((void*)0);
   ocs_hw_rx_buffer_free(hw, rq->payload_buf, rq->entry_count);
   rq->payload_buf = ((void*)0);
  }
 }
}
