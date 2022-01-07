
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os; int wqe_timer; int in_active_wqe_timer; } ;
typedef TYPE_1__ ocs_hw_t ;


 int TRUE ;
 int ocs_del_timer (int *) ;
 scalar_t__ ocs_hw_async_call (TYPE_1__*,int ,TYPE_1__*) ;
 int ocs_log_test (int ,char*) ;
 int target_wqe_timer_nop_cb ;

__attribute__((used)) static void
target_wqe_timer_cb(void *arg)
{
 ocs_hw_t *hw = (ocs_hw_t *)arg;


 hw->in_active_wqe_timer = TRUE;
 ocs_del_timer(&hw->wqe_timer);


 if (ocs_hw_async_call(hw, target_wqe_timer_nop_cb, hw)) {
  ocs_log_test(hw->os, "ocs_hw_async_call failed\n");
 }
}
