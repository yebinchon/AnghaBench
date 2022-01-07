
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {size_t instance; TYPE_3__* cq; } ;
typedef TYPE_4__ hw_wq_t ;
struct TYPE_10__ {TYPE_1__* eq; int q_list; } ;
struct TYPE_9__ {int os; int ** hw_wq; } ;
struct TYPE_8__ {TYPE_2__* hw; } ;


 int ocs_free (int ,TYPE_4__*,int) ;
 int ocs_list_remove (int *,TYPE_4__*) ;

void
hw_del_wq(hw_wq_t *wq)
{
 if (wq != ((void*)0)) {
  ocs_list_remove(&wq->cq->q_list, wq);
  wq->cq->eq->hw->hw_wq[wq->instance] = ((void*)0);
  ocs_free(wq->cq->eq->hw->os, wq, sizeof(*wq));
 }
}
