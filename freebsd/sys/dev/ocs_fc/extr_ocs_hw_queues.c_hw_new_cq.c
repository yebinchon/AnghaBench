
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int os; TYPE_3__** hw_cq; int sli; TYPE_4__* cq; int cq_count; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_11__ {int cq_list; int entry_count; int instance; int queue; TYPE_1__* hw; } ;
typedef TYPE_2__ hw_eq_t ;
struct TYPE_12__ {size_t instance; int entry_count; TYPE_4__* queue; int q_list; int type; TYPE_2__* eq; } ;
typedef TYPE_3__ hw_cq_t ;
struct TYPE_13__ {int id; } ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI_QTYPE_CQ ;
 int hw_q_t ;
 int link ;
 int ocs_free (int ,TYPE_3__*,int) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_log_debug (int ,char*,size_t,int ,int ) ;
 int ocs_log_err (int ,char*,int ,int ) ;
 TYPE_3__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_queue_alloc (int *,int ,TYPE_4__*,int ,int ,int ) ;

hw_cq_t*
hw_new_cq(hw_eq_t *eq, uint32_t entry_count)
{
 ocs_hw_t *hw = eq->hw;
 hw_cq_t *cq = ocs_malloc(hw->os, sizeof(*cq), OCS_M_ZERO | OCS_M_NOWAIT);

 if (cq != ((void*)0)) {
  cq->eq = eq;
  cq->type = SLI_QTYPE_CQ;
  cq->instance = eq->hw->cq_count++;
  cq->entry_count = entry_count;
  cq->queue = &hw->cq[cq->instance];

  ocs_list_init(&cq->q_list, hw_q_t, link);

  if (sli_queue_alloc(&hw->sli, SLI_QTYPE_CQ, cq->queue, cq->entry_count, eq->queue, 0)) {
   ocs_log_err(hw->os, "CQ[%d] allocation failure len=%d\n",
    eq->instance,
    eq->entry_count);
   ocs_free(hw->os, cq, sizeof(*cq));
   cq = ((void*)0);
  } else {
   hw->hw_cq[cq->instance] = cq;
   ocs_list_add_tail(&eq->cq_list, cq);
   ocs_log_debug(hw->os, "create cq[%2d] id %3d len %4d\n", cq->instance, cq->queue->id,
    cq->entry_count);
  }
 }
 return cq;
}
