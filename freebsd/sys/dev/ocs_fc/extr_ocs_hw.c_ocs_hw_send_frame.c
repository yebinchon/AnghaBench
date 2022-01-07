
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_21__ {int wqebuf; } ;
typedef TYPE_3__ ocs_hw_wqe_t ;
struct TYPE_20__ {int wqe_size; } ;
struct TYPE_26__ {TYPE_2__ config; } ;
struct TYPE_22__ {int os; TYPE_8__ sli; TYPE_7__** hw_wq; int * wq_class_array; } ;
typedef TYPE_4__ ocs_hw_t ;
struct TYPE_23__ {TYPE_14__* wqcb; TYPE_4__* hw; TYPE_3__ wqe; } ;
typedef TYPE_5__ ocs_hw_send_frame_context_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_24__ {int len; } ;
typedef TYPE_6__ ocs_dma_t ;
typedef scalar_t__ int32_t ;
struct TYPE_25__ {int use_count; TYPE_1__* send_frame_io; } ;
typedef TYPE_7__ hw_wq_t ;
typedef int fc_header_le_t ;
struct TYPE_19__ {int indicator; } ;
struct TYPE_18__ {int instance_index; } ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_NO_RESOURCES ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_HW_SEND_FRAME_TIMEOUT ;
 int OCS_STAT (int ) ;
 scalar_t__ hw_wq_write (TYPE_7__*,TYPE_3__*) ;
 TYPE_14__* ocs_hw_reqtag_alloc (TYPE_4__*,void (*) (void*,int *,int32_t),void*) ;
 int ocs_log_err (int ,char*,...) ;
 TYPE_7__* ocs_varray_iter_next (int ) ;
 scalar_t__ sli_send_frame_wqe (TYPE_8__*,int ,int ,int ,int ,int *,TYPE_6__*,int ,int ,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_send_frame(ocs_hw_t *hw, fc_header_le_t *hdr, uint8_t sof, uint8_t eof, ocs_dma_t *payload,
     ocs_hw_send_frame_context_t *ctx, void (*callback)(void *arg, uint8_t *cqe, int32_t status), void *arg)
{
 int32_t rc;
 ocs_hw_wqe_t *wqe;
 uint32_t xri;
 hw_wq_t *wq;

 wqe = &ctx->wqe;


 ctx->hw = hw;


 ctx->wqcb = ocs_hw_reqtag_alloc(hw, callback, arg);
 if (ctx->wqcb == ((void*)0)) {
  ocs_log_err(hw->os, "can't allocate request tag\n");
  return OCS_HW_RTN_NO_RESOURCES;
 }


 wq = ocs_varray_iter_next(hw->wq_class_array[1]);
 if (wq == ((void*)0)) {
  wq = hw->hw_wq[0];
 }


 xri = wq->send_frame_io->indicator;


 rc = sli_send_frame_wqe(&hw->sli, wqe->wqebuf, hw->sli.config.wqe_size, sof, eof, (uint32_t*) hdr, payload,
    payload->len, OCS_HW_SEND_FRAME_TIMEOUT, xri, ctx->wqcb->instance_index);
 if (rc) {
  ocs_log_err(hw->os, "sli_send_frame_wqe failed: %d\n", rc);
  return OCS_HW_RTN_ERROR;
 }


 rc = hw_wq_write(wq, wqe);
 if (rc) {
  ocs_log_err(hw->os, "hw_wq_write failed: %d\n", rc);
  return OCS_HW_RTN_ERROR;
 }

 OCS_STAT(wq->use_count++);

 return OCS_HW_RTN_SUCCESS;
}
