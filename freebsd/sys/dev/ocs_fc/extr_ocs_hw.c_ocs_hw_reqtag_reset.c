
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int wq_reqtag_pool; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int * arg; int * callback; scalar_t__ instance_index; } ;
typedef TYPE_2__ hw_wq_callback_t ;


 int * ocs_pool_get (int ) ;
 TYPE_2__* ocs_pool_get_instance (int ,scalar_t__) ;
 int ocs_pool_put (int ,TYPE_2__*) ;

void
ocs_hw_reqtag_reset(ocs_hw_t *hw)
{
 hw_wq_callback_t *wqcb;
 uint32_t i;


 while(ocs_pool_get(hw->wq_reqtag_pool) != ((void*)0)) {
  ;
 }


 for (i = 0; ((wqcb = ocs_pool_get_instance(hw->wq_reqtag_pool, i)) != ((void*)0)); i++) {
  wqcb->instance_index = i;
  wqcb->callback = ((void*)0);
  wqcb->arg = ((void*)0);
  ocs_pool_put(hw->wq_reqtag_pool, wqcb);
 }
}
