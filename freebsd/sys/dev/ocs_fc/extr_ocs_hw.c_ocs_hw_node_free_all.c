
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int SLI_RSRC_FCOE_FCFI ;
 int UINT32_MAX ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_cb_node_free_all ;
 scalar_t__ ocs_hw_command (TYPE_1__*,int *,int ,int ,int *) ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*,...) ;
 int * ocs_malloc (int ,int ,int ) ;
 scalar_t__ sli_cmd_unreg_rpi (int *,int *,int ,int,int ,int ) ;
 scalar_t__ sli_fw_error_status (int *) ;

ocs_hw_rtn_e
ocs_hw_node_free_all(ocs_hw_t *hw)
{
 uint8_t *buf = ((void*)0);
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;

 if (!hw) {
  ocs_log_err(((void*)0), "bad parameter hw=%p\n", hw);
  return OCS_HW_RTN_ERROR;
 }




 if (sli_fw_error_status(&hw->sli) > 0) {
  ocs_log_crit(hw->os, "Chip is in an error state - reset needed\n");
  return OCS_HW_RTN_ERROR;
 }

 buf = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
 if (!buf) {
  ocs_log_err(hw->os, "no buffer for command\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 if (sli_cmd_unreg_rpi(&hw->sli, buf, SLI4_BMBX_SIZE, 0xffff,
    SLI_RSRC_FCOE_FCFI, UINT32_MAX)) {
  rc = ocs_hw_command(hw, buf, OCS_CMD_NOWAIT, ocs_hw_cb_node_free_all,
    ((void*)0));
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(hw->os, "UNREG_RPI failed\n");
  ocs_free(hw->os, buf, SLI4_BMBX_SIZE);
  rc = OCS_HW_RTN_ERROR;
 }

 return rc;
}
