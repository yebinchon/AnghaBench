
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int watchdog_timeout; int os; int watchdog_timer; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_del_timer (int *) ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_watchdog_timer_cb ;
 int ocs_log_err (int ,char*,scalar_t__) ;
 int ocs_setup_timer (int ,int *,int ,TYPE_1__*,int) ;

__attribute__((used)) static void
ocs_hw_cb_cfg_watchdog(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 uint16_t timeout = hw->watchdog_timeout;

 if (status != 0) {
  ocs_log_err(hw->os, "config watchdog timer failed, rc = %d\n", status);
 } else {
  if(timeout != 0) {

   ocs_setup_timer(hw->os, &hw->watchdog_timer, ocs_hw_watchdog_timer_cb, hw, (timeout*1000 - 500) );
  }else {
   ocs_del_timer(&hw->watchdog_timer);
  }
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 return;
}
