
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int indicator; int index; } ;
typedef TYPE_1__ ocs_remote_node_group_t ;
struct TYPE_7__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI_RSRC_FCOE_RPI ;
 int ocs_log_err (int ,char*,TYPE_2__*,...) ;
 scalar_t__ sli_resource_alloc (int *,int ,int *,int *) ;

ocs_hw_rtn_e
ocs_hw_node_group_alloc(ocs_hw_t *hw, ocs_remote_node_group_t *ngroup)
{

 if (!hw || !ngroup) {
  ocs_log_err(((void*)0), "bad parameter hw=%p ngroup=%p\n",
    hw, ngroup);
  return OCS_HW_RTN_ERROR;
 }

 if (sli_resource_alloc(&hw->sli, SLI_RSRC_FCOE_RPI, &ngroup->indicator,
    &ngroup->index)) {
  ocs_log_err(hw->os, "FCOE_RPI allocation failure addr=%#x\n",
    ngroup->indicator);
  return OCS_HW_RTN_ERROR;
 }

 return OCS_HW_RTN_SUCCESS;
}
