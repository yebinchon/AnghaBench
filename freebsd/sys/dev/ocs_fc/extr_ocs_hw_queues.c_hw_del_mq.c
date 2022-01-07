
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {size_t instance; TYPE_3__* cq; } ;
typedef TYPE_4__ hw_mq_t ;
struct TYPE_10__ {TYPE_1__* eq; int q_list; } ;
struct TYPE_9__ {int os; int ** hw_mq; } ;
struct TYPE_8__ {TYPE_2__* hw; } ;


 int ocs_free (int ,TYPE_4__*,int) ;
 int ocs_list_remove (int *,TYPE_4__*) ;

void
hw_del_mq(hw_mq_t *mq)
{
 if (mq != ((void*)0)) {
  ocs_list_remove(&mq->cq->q_list, mq);
  mq->cq->eq->hw->hw_mq[mq->instance] = ((void*)0);
  ocs_free(mq->cq->eq->hw->os, mq, sizeof(*mq));
 }
}
