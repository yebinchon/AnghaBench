
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t index; int indicator; } ;
typedef TYPE_2__ ocs_remote_node_group_t ;
struct TYPE_9__ {TYPE_1__* rpi_ref; int os; int sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_7__ {int rpi_count; } ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI_RSRC_FCOE_RPI ;
 int UINT32_MAX ;
 int ocs_atomic_read (int *) ;
 int ocs_atomic_set (int *,int ) ;
 int ocs_log_debug (int ,char*,int,int ) ;
 int ocs_log_err (int ,char*,TYPE_3__*,...) ;
 scalar_t__ sli_resource_free (int *,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_node_group_free(ocs_hw_t *hw, ocs_remote_node_group_t *ngroup)
{
 int ref;

 if (!hw || !ngroup) {
  ocs_log_err(((void*)0), "bad parameter hw=%p ngroup=%p\n",
    hw, ngroup);
  return OCS_HW_RTN_ERROR;
 }

 ref = ocs_atomic_read(&hw->rpi_ref[ngroup->index].rpi_count);
 if (ref) {

  ocs_log_debug(hw->os, "node group reference=%d (RPI=%#x)\n",
    ref, ngroup->indicator);

  if (sli_resource_free(&hw->sli, SLI_RSRC_FCOE_RPI, ngroup->indicator)) {
   ocs_log_err(hw->os, "FCOE_RPI free failure RPI=%#x\n",
        ngroup->indicator);
   return OCS_HW_RTN_ERROR;
  }

  ocs_atomic_set(&hw->rpi_ref[ngroup->index].rpi_count, 0);
 }

 ngroup->indicator = UINT32_MAX;
 ngroup->index = UINT32_MAX;

 return OCS_HW_RTN_SUCCESS;
}
