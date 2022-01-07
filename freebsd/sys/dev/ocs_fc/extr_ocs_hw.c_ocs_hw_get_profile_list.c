
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int payload; void* arg; int cb; } ;
typedef TYPE_1__ uint8_t ;
typedef int sli4_res_common_get_profile_list_t ;
struct TYPE_12__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef TYPE_1__ ocs_hw_get_profile_list_cb_arg_t ;
typedef int ocs_get_profile_list_cb_t ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ ocs_dma_alloc (int ,int *,int,int) ;
 int ocs_dma_free (int ,int *) ;
 int ocs_free (int ,TYPE_1__*,int) ;
 scalar_t__ ocs_hw_command (TYPE_2__*,TYPE_1__*,int ,int ,TYPE_1__*) ;
 int ocs_hw_get_profile_list_cb ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 TYPE_1__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_cmd_common_get_profile_list (int *,TYPE_1__*,int,int ,int *) ;
 scalar_t__ sli_get_if_type (int *) ;

ocs_hw_rtn_e
ocs_hw_get_profile_list(ocs_hw_t *hw, ocs_get_profile_list_cb_t cb, void* ul_arg)
{
 uint8_t *mbxdata;
 ocs_hw_get_profile_list_cb_arg_t *cb_arg;
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;


 if (sli_get_if_type(&hw->sli) != SLI4_IF_TYPE_BE3_SKH_PF) {
  return OCS_HW_RTN_ERROR;
 }


 mbxdata = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (mbxdata == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc mbox\n");
  return OCS_HW_RTN_NO_MEMORY;
 }



 cb_arg = ocs_malloc(hw->os, sizeof(ocs_hw_get_profile_list_cb_arg_t), OCS_M_NOWAIT);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg->cb = cb;
 cb_arg->arg = ul_arg;


 if (ocs_dma_alloc(hw->os, &cb_arg->payload, sizeof(sli4_res_common_get_profile_list_t), 4)) {
  ocs_log_err(hw->os, "Failed to allocate DMA buffer\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_get_profile_list_cb_arg_t));
  return OCS_HW_RTN_NO_MEMORY;
 }

 if (sli_cmd_common_get_profile_list(&hw->sli, mbxdata, SLI4_BMBX_SIZE, 0, &cb_arg->payload)) {
  rc = ocs_hw_command(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_get_profile_list_cb, cb_arg);
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_test(hw->os, "GET_PROFILE_LIST failed\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  ocs_dma_free(hw->os, &cb_arg->payload);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_get_profile_list_cb_arg_t));
 }

 return rc;
}
