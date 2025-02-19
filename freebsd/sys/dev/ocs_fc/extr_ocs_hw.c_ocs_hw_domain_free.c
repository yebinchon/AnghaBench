
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_8__ {int sm; } ;
typedef TYPE_2__ ocs_domain_t ;


 int OCS_EVT_HW_DOMAIN_REQ_FREE ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int ocs_log_crit (int *,char*) ;
 int ocs_log_err (int *,char*,TYPE_1__*,TYPE_2__*) ;
 int ocs_sm_post_event (int *,int ,int *) ;
 scalar_t__ sli_fw_error_status (int *) ;

ocs_hw_rtn_e
ocs_hw_domain_free(ocs_hw_t *hw, ocs_domain_t *domain)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

 if (!hw || !domain) {
  ocs_log_err(hw ? hw->os : ((void*)0),
   "bad parameter(s) hw=%p domain=%p\n",
   hw, domain);
  return OCS_HW_RTN_ERROR;
 }




 if (sli_fw_error_status(&hw->sli) > 0) {
  ocs_log_crit(hw->os, "Chip is in an error state - reset needed\n");
  return OCS_HW_RTN_ERROR;
 }

 ocs_sm_post_event(&domain->sm, OCS_EVT_HW_DOMAIN_REQ_FREE, ((void*)0));
 return rc;
}
