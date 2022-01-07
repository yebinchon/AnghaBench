
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int dma_cmd; int opts; void* arg; int cb; } ;
typedef TYPE_1__ uint8_t ;
typedef int uint32_t ;
typedef int sli4_res_common_get_reconfig_link_info_t ;
struct TYPE_18__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int ocs_hw_port_control_cb_t ;
typedef TYPE_1__ ocs_hw_linkcfg_cb_arg_t ;


 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ ocs_dma_alloc (int ,int *,int,int) ;
 int ocs_dma_free (int ,int *) ;
 int ocs_free (int ,TYPE_1__*,int) ;
 scalar_t__ ocs_hw_command (TYPE_2__*,TYPE_1__*,int ,int (*) (TYPE_2__*,int ,TYPE_1__*,TYPE_1__*),TYPE_1__*) ;
 int ocs_hw_get_active_link_config_cb (TYPE_2__*,int ,TYPE_1__*,TYPE_1__*) ;
 int ocs_log_err (int ,char*) ;
 TYPE_1__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_cmd_common_get_reconfig_link_info (int *,TYPE_1__*,int,int *) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_get_linkcfg_skyhawk(ocs_hw_t *hw, uint32_t opts, ocs_hw_port_control_cb_t cb, void *arg)
{
 uint8_t *mbxdata;
 ocs_hw_linkcfg_cb_arg_t *cb_arg;
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;


 mbxdata = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (mbxdata == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc mbox\n");
  return OCS_HW_RTN_NO_MEMORY;
 }


 cb_arg = ocs_malloc(hw->os, sizeof(ocs_hw_linkcfg_cb_arg_t), OCS_M_NOWAIT);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg->cb = cb;
 cb_arg->arg = arg;
 cb_arg->opts = opts;


 if (ocs_dma_alloc(hw->os, &cb_arg->dma_cmd, sizeof(sli4_res_common_get_reconfig_link_info_t), 4)) {
  ocs_log_err(hw->os, "Failed to allocate DMA buffer\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_linkcfg_cb_arg_t));
  return OCS_HW_RTN_NO_MEMORY;
 }

 if (sli_cmd_common_get_reconfig_link_info(&hw->sli, mbxdata, SLI4_BMBX_SIZE, &cb_arg->dma_cmd)) {
  rc = ocs_hw_command(hw, mbxdata, opts, ocs_hw_get_active_link_config_cb, cb_arg);
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(hw->os, "GET_RECONFIG_LINK_INFO failed\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_dma_free(hw->os, &cb_arg->dma_cmd);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_linkcfg_cb_arg_t));
 } else if (opts == OCS_CMD_POLL) {

  ocs_hw_get_active_link_config_cb(hw, 0, mbxdata, cb_arg);
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_dma_free(hw->os, &cb_arg->dma_cmd);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_linkcfg_cb_arg_t));
 } else {

  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
 }

 return rc;
}
