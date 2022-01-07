
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* indicator; void* free_group; void* index; void* node_group; int fc_id; int attached; scalar_t__ sport; } ;
typedef TYPE_1__ ocs_remote_node_t ;
struct TYPE_6__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 void* FALSE ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI_RSRC_FCOE_RPI ;
 void* UINT32_MAX ;
 int ocs_log_err (int ,char*,...) ;
 scalar_t__ sli_resource_free (int *,int ,void*) ;

ocs_hw_rtn_e
ocs_hw_node_free_resources(ocs_hw_t *hw, ocs_remote_node_t *rnode)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

 if (!hw || !rnode) {
  ocs_log_err(((void*)0), "bad parameter(s) hw=%p rnode=%p\n",
       hw, rnode);
  return OCS_HW_RTN_ERROR;
 }

 if (rnode->sport) {
  if (!rnode->attached) {
   if (rnode->indicator != UINT32_MAX) {
    if (sli_resource_free(&hw->sli, SLI_RSRC_FCOE_RPI, rnode->indicator)) {
     ocs_log_err(hw->os, "FCOE_RPI free failure RPI %d addr=%#x\n",
          rnode->indicator, rnode->fc_id);
     rc = OCS_HW_RTN_ERROR;
    } else {
     rnode->node_group = FALSE;
     rnode->indicator = UINT32_MAX;
     rnode->index = UINT32_MAX;
     rnode->free_group = FALSE;
    }
   }
  } else {
   ocs_log_err(hw->os, "Error: rnode is still attached\n");
   rc = OCS_HW_RTN_ERROR;
  }
 }

 return rc;
}
