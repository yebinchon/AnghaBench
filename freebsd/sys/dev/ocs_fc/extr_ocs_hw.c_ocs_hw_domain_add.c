
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_8__ {scalar_t__ override_fcfi; } ;
struct TYPE_9__ {size_t first_domain_idx; size_t* fcf_index_fcfi; int os; TYPE_3__** domains; TYPE_1__ workaround; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_10__ {size_t fcf_indicator; size_t fcf; } ;
typedef TYPE_3__ ocs_domain_t ;
typedef int int32_t ;


 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 size_t SLI4_MAX_FCFI ;
 size_t SLI4_MAX_FCF_INDEX ;
 size_t UINT16_MAX ;
 int ocs_log_debug (int ,char*,...) ;
 int ocs_log_err (int *,char*,TYPE_2__*,TYPE_3__*) ;
 int ocs_log_test (int ,char*,size_t,size_t) ;

__attribute__((used)) static int32_t
ocs_hw_domain_add(ocs_hw_t *hw, ocs_domain_t *domain)
{
 int32_t rc = OCS_HW_RTN_ERROR;
 uint16_t fcfi = UINT16_MAX;

 if ((hw == ((void*)0)) || (domain == ((void*)0))) {
  ocs_log_err(((void*)0), "bad parameter hw=%p domain=%p\n",
    hw, domain);
  return OCS_HW_RTN_ERROR;
 }

 fcfi = domain->fcf_indicator;

 if (fcfi < SLI4_MAX_FCFI) {
  uint16_t fcf_index = UINT16_MAX;

  ocs_log_debug(hw->os, "adding domain %p @ %#x\n",
    domain, fcfi);
  hw->domains[fcfi] = domain;


  if (hw->workaround.override_fcfi) {
   if (hw->first_domain_idx < 0) {
    hw->first_domain_idx = fcfi;
   }
  }

  fcf_index = domain->fcf;

  if (fcf_index < SLI4_MAX_FCF_INDEX) {
   ocs_log_debug(hw->os, "adding map of FCF index %d to FCFI %d\n",
          fcf_index, fcfi);
   hw->fcf_index_fcfi[fcf_index] = fcfi;
   rc = OCS_HW_RTN_SUCCESS;
  } else {
   ocs_log_test(hw->os, "FCF index %d out of range (max %d)\n",
         fcf_index, SLI4_MAX_FCF_INDEX);
   hw->domains[fcfi] = ((void*)0);
  }
 } else {
  ocs_log_test(hw->os, "FCFI %#x out of range (max %#x)\n",
    fcfi, SLI4_MAX_FCFI);
 }

 return rc;
}
