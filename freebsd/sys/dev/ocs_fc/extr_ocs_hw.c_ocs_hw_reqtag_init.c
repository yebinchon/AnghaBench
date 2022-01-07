
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os; int * wq_reqtag_pool; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
typedef int hw_wq_callback_t ;


 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_HW_RTN_SUCCESS ;
 int TRUE ;
 int ocs_hw_reqtag_reset (TYPE_1__*) ;
 int ocs_log_err (int ,char*) ;
 int * ocs_pool_alloc (int ,int,int,int ) ;

ocs_hw_rtn_e
ocs_hw_reqtag_init(ocs_hw_t *hw)
{
 if (hw->wq_reqtag_pool == ((void*)0)) {
  hw->wq_reqtag_pool = ocs_pool_alloc(hw->os, sizeof(hw_wq_callback_t), 65536, TRUE);
  if (hw->wq_reqtag_pool == ((void*)0)) {
   ocs_log_err(hw->os, "ocs_pool_alloc hw_wq_callback_t failed\n");
   return OCS_HW_RTN_NO_MEMORY;
  }
 }
 ocs_hw_reqtag_reset(hw);
 return OCS_HW_RTN_SUCCESS;
}
