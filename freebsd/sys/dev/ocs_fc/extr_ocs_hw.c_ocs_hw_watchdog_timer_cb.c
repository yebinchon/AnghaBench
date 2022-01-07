
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_hw_t ;


 int ocs_hw_config_watchdog_timer (int *) ;

__attribute__((used)) static void
ocs_hw_watchdog_timer_cb(void *arg)
{
 ocs_hw_t *hw = (ocs_hw_t *)arg;

 ocs_hw_config_watchdog_timer(hw);
 return;
}
