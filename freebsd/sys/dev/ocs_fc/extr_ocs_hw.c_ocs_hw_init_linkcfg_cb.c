
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ linkcfg; int os; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_linkcfg_e ;
typedef scalar_t__ int32_t ;


 scalar_t__ OCS_HW_LINKCFG_NA ;
 int ocs_log_debug (int ,char*,scalar_t__) ;

__attribute__((used)) static void
ocs_hw_init_linkcfg_cb(int32_t status, uintptr_t value, void *arg)
{
 ocs_hw_t *hw = (ocs_hw_t *)arg;
 if (status == 0) {
  hw->linkcfg = (ocs_hw_linkcfg_e)value;
 } else {
  hw->linkcfg = OCS_HW_LINKCFG_NA;
 }
 ocs_log_debug(hw->os, "linkcfg=%d\n", hw->linkcfg);
}
