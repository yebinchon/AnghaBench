
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_16__ {size_t index; TYPE_1__* sport; int indicator; int fc_id; scalar_t__ node_group; scalar_t__ attached; } ;
typedef TYPE_4__ ocs_remote_node_t ;
struct TYPE_14__ {scalar_t__ auto_xfer_rdy_t10_enable; } ;
struct TYPE_17__ {int os; TYPE_3__* rpi_ref; TYPE_2__ config; scalar_t__ auto_xfer_rdy_enabled; int sli; } ;
typedef TYPE_5__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
struct TYPE_18__ {int virt; } ;
typedef TYPE_6__ ocs_dma_t ;
struct TYPE_15__ {int rpi_count; int rpi_attached; } ;
struct TYPE_13__ {int indicator; } ;


 scalar_t__ FALSE ;
 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_HW_RTN_SUCCESS_SYNC ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ TRUE ;
 size_t UINT32_MAX ;
 scalar_t__ ocs_atomic_add_return (int *,int) ;
 scalar_t__ ocs_atomic_read (int *) ;
 int ocs_atomic_sub_return (int *,int) ;
 int ocs_display_sparams (char*,char*,int ,int *,int ) ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_cb_node_attach ;
 scalar_t__ ocs_hw_command (TYPE_5__*,int *,int ,int ,TYPE_4__*) ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_log_test (int ,char*,scalar_t__,scalar_t__) ;
 int * ocs_malloc (int ,int ,int ) ;
 scalar_t__ sli_cmd_reg_rpi (int *,int *,int ,int ,int ,int ,TYPE_6__*,int ,int) ;
 scalar_t__ sli_fw_error_status (int *) ;
 scalar_t__ sli_get_hlm (int *) ;

ocs_hw_rtn_e
ocs_hw_node_attach(ocs_hw_t *hw, ocs_remote_node_t *rnode, ocs_dma_t *sparms)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;
 uint8_t *buf = ((void*)0);
 uint32_t count = 0;

 if (!hw || !rnode || !sparms) {
  ocs_log_err(((void*)0), "bad parameter(s) hw=%p rnode=%p sparms=%p\n",
       hw, rnode, sparms);
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





 if (rnode->index == UINT32_MAX) {
  ocs_log_err(((void*)0), "bad parameter rnode->index invalid\n");
  ocs_free(hw->os, buf, SLI4_BMBX_SIZE);
  return OCS_HW_RTN_ERROR;
 }
 count = ocs_atomic_add_return(&hw->rpi_ref[rnode->index].rpi_count, 1);
 if (count) {




  if (sli_get_hlm(&hw->sli) == FALSE) {
   ocs_log_test(hw->os, "attach to already attached node HLM=%d count=%d\n",
     sli_get_hlm(&hw->sli), count);
   rc = OCS_HW_RTN_SUCCESS;
  } else {
   rnode->node_group = TRUE;
   rnode->attached = ocs_atomic_read(&hw->rpi_ref[rnode->index].rpi_attached);
   rc = rnode->attached ? OCS_HW_RTN_SUCCESS_SYNC : OCS_HW_RTN_SUCCESS;
  }
 } else {
  rnode->node_group = FALSE;

  ocs_display_sparams("", "reg rpi", 0, ((void*)0), sparms->virt);
  if (sli_cmd_reg_rpi(&hw->sli, buf, SLI4_BMBX_SIZE, rnode->fc_id,
     rnode->indicator, rnode->sport->indicator,
     sparms, 0, (hw->auto_xfer_rdy_enabled && hw->config.auto_xfer_rdy_t10_enable))) {
   rc = ocs_hw_command(hw, buf, OCS_CMD_NOWAIT,
     ocs_hw_cb_node_attach, rnode);
  }
 }

 if (count || rc) {
  if (rc < OCS_HW_RTN_SUCCESS) {
   ocs_atomic_sub_return(&hw->rpi_ref[rnode->index].rpi_count, 1);
   ocs_log_err(hw->os, "%s error\n", count ? "HLM" : "REG_RPI");
  }
  ocs_free(hw->os, buf, SLI4_BMBX_SIZE);
 }

 return rc;
}
