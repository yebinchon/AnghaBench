
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int * os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_8__ {int sm; TYPE_1__* sport; } ;
typedef TYPE_3__ ocs_domain_t ;
struct TYPE_6__ {int fc_id; } ;


 int OCS_EVT_HW_DOMAIN_REQ_ATTACH ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int ocs_log_crit (int *,char*) ;
 int ocs_log_err (int *,char*,...) ;
 int * ocs_malloc (int *,int ,int ) ;
 int ocs_sm_post_event (int *,int ,int *) ;
 scalar_t__ sli_fw_error_status (int *) ;

ocs_hw_rtn_e
ocs_hw_domain_attach(ocs_hw_t *hw, ocs_domain_t *domain, uint32_t fc_id)
{
 uint8_t *buf = ((void*)0);
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

 buf = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
 if (!buf) {
  ocs_log_err(hw->os, "no buffer for command\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 domain->sport->fc_id = fc_id;
 ocs_sm_post_event(&domain->sm, OCS_EVT_HW_DOMAIN_REQ_ATTACH, buf);
 return rc;
}
