
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int os; TYPE_3__** hw_mq; int sli; TYPE_5__* mq; int mq_count; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_13__ {size_t instance; int entry_count; TYPE_5__* queue; int entry_size; int type; TYPE_4__* cq; } ;
typedef TYPE_3__ hw_mq_t ;
struct TYPE_14__ {int q_list; int queue; TYPE_1__* eq; } ;
typedef TYPE_4__ hw_cq_t ;
struct TYPE_15__ {int id; } ;
struct TYPE_11__ {TYPE_2__* hw; } ;


 int OCS_HW_MQ_DEPTH ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI_QTYPE_MQ ;
 int ocs_free (int ,TYPE_3__*,int) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_log_debug (int ,char*,size_t,int ,int ) ;
 int ocs_log_err (int ,char*) ;
 TYPE_3__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_queue_alloc (int *,int ,TYPE_5__*,int ,int ,int ) ;

hw_mq_t*
hw_new_mq(hw_cq_t *cq, uint32_t entry_count)
{
 ocs_hw_t *hw = cq->eq->hw;
 hw_mq_t *mq = ocs_malloc(hw->os, sizeof(*mq), OCS_M_ZERO | OCS_M_NOWAIT);

 if (mq != ((void*)0)) {
  mq->cq = cq;
  mq->type = SLI_QTYPE_MQ;
  mq->instance = cq->eq->hw->mq_count++;
  mq->entry_count = entry_count;
  mq->entry_size = OCS_HW_MQ_DEPTH;
  mq->queue = &hw->mq[mq->instance];

  if (sli_queue_alloc(&hw->sli, SLI_QTYPE_MQ,
        mq->queue,
        mq->entry_size,
        cq->queue, 0)) {
   ocs_log_err(hw->os, "MQ allocation failure\n");
   ocs_free(hw->os, mq, sizeof(*mq));
   mq = ((void*)0);
  } else {
   hw->hw_mq[mq->instance] = mq;
   ocs_list_add_tail(&cq->q_list, mq);
   ocs_log_debug(hw->os, "create mq[%2d] id %3d len %4d\n", mq->instance, mq->queue->id,
    mq->entry_count);
  }
 }
 return mq;
}
