
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int os; int wq_reqtag_pool; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int hw_wq_callback_t ;


 int ocs_log_err (int ,char*,int ) ;
 int * ocs_pool_get_instance (int ,int ) ;

hw_wq_callback_t *
ocs_hw_reqtag_get_instance(ocs_hw_t *hw, uint32_t instance_index)
{
 hw_wq_callback_t *wqcb;

 wqcb = ocs_pool_get_instance(hw->wq_reqtag_pool, instance_index);
 if (wqcb == ((void*)0)) {
  ocs_log_err(hw->os, "wqcb for instance %d is null\n", instance_index);
 }
 return wqcb;
}
