
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_8__ {int indicator; } ;
typedef TYPE_2__ ocs_domain_t ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI_RSRC_FCOE_VFI ;
 int ocs_log_err (int *,char*,TYPE_1__*,TYPE_2__*) ;
 int sli_resource_free (int *,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_domain_force_free(ocs_hw_t *hw, ocs_domain_t *domain)
{
 if (!hw || !domain) {
  ocs_log_err(((void*)0), "bad parameter(s) hw=%p domain=%p\n", hw, domain);
  return OCS_HW_RTN_ERROR;
 }

 sli_resource_free(&hw->sli, SLI_RSRC_FCOE_VFI, domain->indicator);

 return OCS_HW_RTN_SUCCESS;
}
