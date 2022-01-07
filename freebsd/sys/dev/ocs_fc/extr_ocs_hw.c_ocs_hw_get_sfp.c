
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int payload; void* arg; int cb; } ;
typedef TYPE_1__ uint8_t ;
typedef int uint16_t ;
typedef int sli4_res_common_read_transceiver_data_t ;
struct TYPE_12__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_sfp_cb_t ;
typedef TYPE_1__ ocs_hw_sfp_cb_arg_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_MIN_DMA_ALIGNMENT ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ ocs_dma_alloc (int ,int *,int,int ) ;
 int ocs_dma_free (int ,int *) ;
 int ocs_free (int ,TYPE_1__*,int) ;
 int ocs_hw_cb_sfp ;
 scalar_t__ ocs_hw_command (TYPE_2__*,TYPE_1__*,int ,int ,TYPE_1__*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*,scalar_t__) ;
 TYPE_1__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_cmd_common_read_transceiver_data (int *,TYPE_1__*,int,int ,int *) ;

ocs_hw_rtn_e
ocs_hw_get_sfp(ocs_hw_t *hw, uint16_t page, ocs_hw_sfp_cb_t cb, void *arg)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
 ocs_hw_sfp_cb_arg_t *cb_arg;
 uint8_t *mbxdata;


 mbxdata = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (mbxdata == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc mbox\n");
  return OCS_HW_RTN_NO_MEMORY;
 }


 cb_arg = ocs_malloc(hw->os, sizeof(ocs_hw_sfp_cb_arg_t), OCS_M_NOWAIT);
 if (cb_arg == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc cb_arg\n");
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
 }

 cb_arg->cb = cb;
 cb_arg->arg = arg;


 if (ocs_dma_alloc(hw->os, &cb_arg->payload, sizeof(sli4_res_common_read_transceiver_data_t),
     OCS_MIN_DMA_ALIGNMENT)) {
  ocs_log_err(hw->os, "Failed to allocate DMA buffer\n");
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_sfp_cb_arg_t));
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_NO_MEMORY;
 }


 if (sli_cmd_common_read_transceiver_data(&hw->sli, mbxdata, SLI4_BMBX_SIZE, page,
     &cb_arg->payload)) {
  rc = ocs_hw_command(hw, mbxdata, OCS_CMD_NOWAIT, ocs_hw_cb_sfp, cb_arg);
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_test(hw->os, "READ_TRANSCEIVER_DATA failed with status %d\n",
    rc);
  ocs_dma_free(hw->os, &cb_arg->payload);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_sfp_cb_arg_t));
  ocs_free(hw->os, mbxdata, SLI4_BMBX_SIZE);
 }

 return rc;
}
