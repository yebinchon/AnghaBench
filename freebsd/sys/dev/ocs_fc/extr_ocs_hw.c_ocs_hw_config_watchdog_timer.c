
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int os; int watchdog_timeout; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_cb_cfg_watchdog ;
 scalar_t__ ocs_hw_command (TYPE_1__*,int *,int ,int ,int *) ;
 int ocs_log_err (int ,char*,...) ;
 int * ocs_malloc (int ,int ,int ) ;
 int sli4_cmd_lowlevel_set_watchdog (int *,int *,int ,int ) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_config_watchdog_timer(ocs_hw_t *hw)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint8_t *buf = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);

 if (!buf) {
  ocs_log_err(hw->os, "no buffer for command\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 sli4_cmd_lowlevel_set_watchdog(&hw->sli, buf, SLI4_BMBX_SIZE, hw->watchdog_timeout);
 rc = ocs_hw_command(hw, buf, OCS_CMD_NOWAIT, ocs_hw_cb_cfg_watchdog, ((void*)0));
 if (rc) {
  ocs_free(hw->os, buf, SLI4_BMBX_SIZE);
  ocs_log_err(hw->os, "config watchdog timer failed, rc = %d\n", rc);
 }
 return rc;
}
