
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_t ;
struct TYPE_8__ {size_t rq_default_buffer_size; } ;
struct TYPE_11__ {size_t hw_rq_count; int * os; TYPE_5__** hw_rq; TYPE_1__ config; } ;
typedef TYPE_4__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef scalar_t__ int32_t ;
struct TYPE_12__ {int entry_count; TYPE_3__* data; int * payload_buf; TYPE_2__* hdr; int * hdr_buf; } ;
typedef TYPE_5__ hw_rq_t ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int id; } ;


 size_t OCS_HW_RQ_SIZE_HDR ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 void* ocs_hw_rx_buffer_alloc (TYPE_4__*,size_t,int ,size_t) ;
 int ocs_log_debug (int *,char*,size_t,int ,int ,size_t) ;
 int ocs_log_err (int *,char*) ;

ocs_hw_rtn_e
ocs_hw_rx_allocate(ocs_hw_t *hw)
{
 ocs_t *ocs = hw->os;
 uint32_t i;
 int32_t rc = OCS_HW_RTN_SUCCESS;
 uint32_t rqindex = 0;
 hw_rq_t *rq;
 uint32_t hdr_size = OCS_HW_RQ_SIZE_HDR;
 uint32_t payload_size = hw->config.rq_default_buffer_size;

 rqindex = 0;

 for (i = 0; i < hw->hw_rq_count; i++) {
  rq = hw->hw_rq[i];


  rq->hdr_buf = ocs_hw_rx_buffer_alloc(hw, rqindex, rq->entry_count, hdr_size);
  if (rq->hdr_buf == ((void*)0)) {
   ocs_log_err(ocs, "ocs_hw_rx_buffer_alloc hdr_buf failed\n");
   rc = OCS_HW_RTN_ERROR;
   break;
  }

  ocs_log_debug(hw->os, "rq[%2d] rq_id %02d header  %4d by %4d bytes\n", i, rq->hdr->id,
         rq->entry_count, hdr_size);

  rqindex++;


  rq->payload_buf = ocs_hw_rx_buffer_alloc(hw, rqindex, rq->entry_count, payload_size);
  if (rq->payload_buf == ((void*)0)) {
   ocs_log_err(ocs, "ocs_hw_rx_buffer_alloc fb_buf failed\n");
   rc = OCS_HW_RTN_ERROR;
   break;
  }
  ocs_log_debug(hw->os, "rq[%2d] rq_id %02d default %4d by %4d bytes\n", i, rq->data->id,
         rq->entry_count, payload_size);
  rqindex++;
 }

 return rc ? OCS_HW_RTN_ERROR : OCS_HW_RTN_SUCCESS;
}
