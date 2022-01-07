
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wq_reqtag_pool; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int * arg; int * callback; } ;
typedef TYPE_2__ hw_wq_callback_t ;


 int ocs_hw_assert (int ) ;
 int ocs_pool_put (int ,TYPE_2__*) ;

void
ocs_hw_reqtag_free(ocs_hw_t *hw, hw_wq_callback_t *wqcb)
{
 ocs_hw_assert(wqcb->callback != ((void*)0));
 wqcb->callback = ((void*)0);
 wqcb->arg = ((void*)0);
 ocs_pool_put(hw->wq_reqtag_pool, wqcb);
}
