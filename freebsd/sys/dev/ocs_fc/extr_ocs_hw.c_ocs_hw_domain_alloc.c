
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_6__ {int os; int sli; int domain_dmem; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_8__ {TYPE_2__* app; } ;
struct TYPE_7__ {TYPE_3__ sm; void* indicator; void* vlan_id; void* fcf_indicator; void* fcf; TYPE_1__* hw; int dma; int * sport; } ;
typedef TYPE_2__ ocs_domain_t ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 int SLI_RSRC_FCOE_VFI ;
 void* UINT32_MAX ;
 int __ocs_hw_domain_init ;
 int ocs_free (int ,int *,int ) ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*,...) ;
 int * ocs_malloc (int ,int ,int) ;
 int ocs_sm_transition (TYPE_3__*,int ,int *) ;
 scalar_t__ sli_fw_error_status (int *) ;
 scalar_t__ sli_resource_alloc (int *,int ,void**,void**) ;

ocs_hw_rtn_e
ocs_hw_domain_alloc(ocs_hw_t *hw, ocs_domain_t *domain, uint32_t fcf, uint32_t vlan)
{
 uint8_t *cmd = ((void*)0);
 uint32_t index;

 if (!hw || !domain || !domain->sport) {
  ocs_log_err(((void*)0), "bad parameter(s) hw=%p domain=%p sport=%p\n",
    hw, domain, domain ? domain->sport : ((void*)0));
  return OCS_HW_RTN_ERROR;
 }




 if (sli_fw_error_status(&hw->sli) > 0) {
  ocs_log_crit(hw->os, "Chip is in an error state - reset needed\n");
  return OCS_HW_RTN_ERROR;
 }

 cmd = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
 if (!cmd) {
  ocs_log_err(hw->os, "command memory allocation failed\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 domain->dma = hw->domain_dmem;

 domain->hw = hw;
 domain->sm.app = domain;
 domain->fcf = fcf;
 domain->fcf_indicator = UINT32_MAX;
 domain->vlan_id = vlan;
 domain->indicator = UINT32_MAX;

 if (sli_resource_alloc(&hw->sli, SLI_RSRC_FCOE_VFI, &domain->indicator, &index)) {
  ocs_log_err(hw->os, "FCOE_VFI allocation failure\n");

  ocs_free(hw->os, cmd, SLI4_BMBX_SIZE);

  return OCS_HW_RTN_ERROR;
 }

 ocs_sm_transition(&domain->sm, __ocs_hw_domain_init, cmd);
 return OCS_HW_RTN_SUCCESS;
}
