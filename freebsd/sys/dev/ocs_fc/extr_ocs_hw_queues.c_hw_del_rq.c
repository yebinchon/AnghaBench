
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int os; int ** hw_rq; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_sequence_t ;
struct TYPE_11__ {int entry_count; size_t instance; TYPE_2__* cq; struct TYPE_11__* rq_tracker; } ;
typedef TYPE_4__ hw_rq_t ;
struct TYPE_9__ {int q_list; TYPE_1__* eq; } ;
struct TYPE_8__ {TYPE_3__* hw; } ;


 int ocs_free (int ,TYPE_4__*,int) ;
 int ocs_list_remove (int *,TYPE_4__*) ;

void
hw_del_rq(hw_rq_t *rq)
{

 if (rq != ((void*)0)) {
  ocs_hw_t *hw = rq->cq->eq->hw;

  if (rq->rq_tracker != ((void*)0)) {
   ocs_free(hw->os, rq->rq_tracker, sizeof(ocs_hw_sequence_t*) * rq->entry_count);
   rq->rq_tracker = ((void*)0);
  }
  ocs_list_remove(&rq->cq->q_list, rq);
  hw->hw_rq[rq->instance] = ((void*)0);
  ocs_free(hw->os, rq, sizeof(*rq));
 }
}
