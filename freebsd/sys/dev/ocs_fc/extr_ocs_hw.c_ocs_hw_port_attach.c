
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int ctx; int fc_id; } ;
typedef TYPE_1__ ocs_sli_port_t ;
struct TYPE_6__ {int * os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_EVT_HW_PORT_REQ_ATTACH ;
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
ocs_hw_port_attach(ocs_hw_t *hw, ocs_sli_port_t *sport, uint32_t fc_id)
{
 uint8_t *buf = ((void*)0);
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;

 if (!hw || !sport) {
  ocs_log_err(hw ? hw->os : ((void*)0),
   "bad parameter(s) hw=%p sport=%p\n", hw,
   sport);
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

 sport->fc_id = fc_id;
 ocs_sm_post_event(&sport->ctx, OCS_EVT_HW_PORT_REQ_ATTACH, buf);
 return rc;
}
