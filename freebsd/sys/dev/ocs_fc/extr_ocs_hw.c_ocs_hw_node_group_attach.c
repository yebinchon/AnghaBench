
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int index; int indicator; int fc_id; scalar_t__ attached; } ;
typedef TYPE_1__ ocs_remote_node_t ;
struct TYPE_9__ {int index; int indicator; } ;
typedef TYPE_2__ ocs_remote_node_group_t ;
struct TYPE_10__ {int os; int sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI_RSRC_FCOE_RPI ;
 int ocs_log_err (int ,char*,TYPE_3__*,...) ;
 scalar_t__ sli_resource_free (int *,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_node_group_attach(ocs_hw_t *hw, ocs_remote_node_group_t *ngroup, ocs_remote_node_t *rnode)
{

 if (!hw || !ngroup || !rnode) {
  ocs_log_err(((void*)0), "bad parameter hw=%p ngroup=%p rnode=%p\n",
       hw, ngroup, rnode);
  return OCS_HW_RTN_ERROR;
 }

 if (rnode->attached) {
  ocs_log_err(hw->os, "node already attached RPI=%#x addr=%#x\n",
       rnode->indicator, rnode->fc_id);
  return OCS_HW_RTN_ERROR;
 }

 if (sli_resource_free(&hw->sli, SLI_RSRC_FCOE_RPI, rnode->indicator)) {
  ocs_log_err(hw->os, "FCOE_RPI free failure RPI=%#x\n",
    rnode->indicator);
  return OCS_HW_RTN_ERROR;
 }

 rnode->indicator = ngroup->indicator;
 rnode->index = ngroup->index;

 return OCS_HW_RTN_SUCCESS;
}
