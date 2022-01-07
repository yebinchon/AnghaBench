
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_11__ {int status; } ;
typedef TYPE_2__ sli4_fc_wcqe_t ;
struct TYPE_12__ {int os; int q_hist; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int int32_t ;
struct TYPE_13__ {int arg; int (* callback ) (int ,int *,int ) ;} ;
typedef TYPE_4__ hw_wq_callback_t ;
struct TYPE_14__ {TYPE_1__* queue; } ;
typedef TYPE_5__ hw_cq_t ;
struct TYPE_10__ {int index; int length; int id; } ;


 scalar_t__ OCS_HW_REQUE_XRI_REGTAG ;
 int SLI_QENTRY_WQ ;
 TYPE_4__* ocs_hw_reqtag_get_instance (TYPE_3__*,scalar_t__) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_queue_history_cqe (int *,int ,void*,int ,int ,int) ;
 int stub1 (int ,int *,int ) ;

void
ocs_hw_wq_process(ocs_hw_t *hw, hw_cq_t *cq, uint8_t *cqe, int32_t status, uint16_t rid)
{
 hw_wq_callback_t *wqcb;

 ocs_queue_history_cqe(&hw->q_hist, SLI_QENTRY_WQ, (void *)cqe, ((sli4_fc_wcqe_t *)cqe)->status, cq->queue->id,
         ((cq->queue->index - 1) & (cq->queue->length - 1)));

 if(rid == OCS_HW_REQUE_XRI_REGTAG) {
  if(status) {
   ocs_log_err(hw->os, "reque xri failed, status = %d \n", status);
  }
  return;
 }

 wqcb = ocs_hw_reqtag_get_instance(hw, rid);
 if (wqcb == ((void*)0)) {
  ocs_log_err(hw->os, "invalid request tag: x%x\n", rid);
  return;
 }

 if (wqcb->callback == ((void*)0)) {
  ocs_log_err(hw->os, "wqcb callback is NULL\n");
  return;
 }

 (*wqcb->callback)(wqcb->arg, cqe, status);
}
