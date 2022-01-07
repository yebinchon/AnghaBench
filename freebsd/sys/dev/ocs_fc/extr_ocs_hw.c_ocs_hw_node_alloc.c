
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_sli_port_t ;
struct TYPE_5__ {scalar_t__ indicator; int * sport; int fc_id; int index; } ;
typedef TYPE_1__ ocs_remote_node_t ;
struct TYPE_6__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI_RSRC_FCOE_RPI ;
 scalar_t__ UINT32_MAX ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*,int ,...) ;
 scalar_t__ sli_fw_error_status (int *) ;
 scalar_t__ sli_resource_alloc (int *,int ,scalar_t__*,int *) ;

ocs_hw_rtn_e
ocs_hw_node_alloc(ocs_hw_t *hw, ocs_remote_node_t *rnode, uint32_t fc_addr,
  ocs_sli_port_t *sport)
{

 if (UINT32_MAX != rnode->indicator) {
  ocs_log_err(hw->os, "FCOE_RPI allocation failure addr=%#x rpi=%#x\n",
    fc_addr, rnode->indicator);
  return OCS_HW_RTN_ERROR;
 }




 if (sli_fw_error_status(&hw->sli) > 0) {
  ocs_log_crit(hw->os, "Chip is in an error state - reset needed\n");
  return OCS_HW_RTN_ERROR;
 }


 rnode->sport = ((void*)0);

 if (sli_resource_alloc(&hw->sli, SLI_RSRC_FCOE_RPI, &rnode->indicator, &rnode->index)) {
  ocs_log_err(hw->os, "FCOE_RPI allocation failure addr=%#x\n",
    fc_addr);
  return OCS_HW_RTN_ERROR;
 }

 rnode->fc_id = fc_addr;
 rnode->sport = sport;

 return OCS_HW_RTN_SUCCESS;
}
