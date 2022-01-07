
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int * ocs_sm_function_t ;
struct TYPE_8__ {TYPE_1__* app; } ;
struct TYPE_6__ {int indicator; TYPE_3__ ctx; int sli_wwpn; scalar_t__ sm_free_req_pending; TYPE_2__* hw; } ;
typedef TYPE_1__ ocs_sli_port_t ;
struct TYPE_7__ {int sli; int os; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef int ocs_domain_t ;


 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 int SLI_RSRC_FCOE_VPI ;
 int UINT32_MAX ;
 int * __ocs_hw_port_alloc_init ;
 int * __ocs_hw_port_alloc_init_vpi ;
 int * __ocs_hw_port_alloc_read_sparm64 ;
 int ocs_free (int ,int *,int ) ;
 int ocs_log_crit (int ,char*) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 int * ocs_malloc (int ,int ,int) ;
 int ocs_memcpy (int *,int *,int) ;
 int ocs_sm_transition (TYPE_3__*,int *,int *) ;
 scalar_t__ sli_fw_error_status (int *) ;
 scalar_t__ sli_resource_alloc (int *,int ,int *,int *) ;
 int sli_resource_free (int *,int ,int ) ;

ocs_hw_rtn_e
ocs_hw_port_alloc(ocs_hw_t *hw, ocs_sli_port_t *sport, ocs_domain_t *domain,
  uint8_t *wwpn)
{
 uint8_t *cmd = ((void*)0);
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint32_t index;

 sport->indicator = UINT32_MAX;
 sport->hw = hw;
 sport->ctx.app = sport;
 sport->sm_free_req_pending = 0;




 if (sli_fw_error_status(&hw->sli) > 0) {
  ocs_log_crit(hw->os, "Chip is in an error state - reset needed\n");
  return OCS_HW_RTN_ERROR;
 }

 if (wwpn) {
  ocs_memcpy(&sport->sli_wwpn, wwpn, sizeof(sport->sli_wwpn));
 }

 if (sli_resource_alloc(&hw->sli, SLI_RSRC_FCOE_VPI, &sport->indicator, &index)) {
  ocs_log_err(hw->os, "FCOE_VPI allocation failure\n");
  return OCS_HW_RTN_ERROR;
 }

 if (domain != ((void*)0)) {
  ocs_sm_function_t next = ((void*)0);

  cmd = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
  if (!cmd) {
   ocs_log_err(hw->os, "command memory allocation failed\n");
   rc = OCS_HW_RTN_NO_MEMORY;
   goto ocs_hw_port_alloc_out;
  }




  if (!wwpn) {
   next = __ocs_hw_port_alloc_read_sparm64;
  } else {
   next = __ocs_hw_port_alloc_init_vpi;
  }

  ocs_sm_transition(&sport->ctx, next, cmd);
 } else if (!wwpn) {

  ocs_log_test(hw->os, "need WWN for physical port\n");
  rc = OCS_HW_RTN_ERROR;
 } else {

  ocs_sm_transition(&sport->ctx, __ocs_hw_port_alloc_init, ((void*)0));
 }

ocs_hw_port_alloc_out:
 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_free(hw->os, cmd, SLI4_BMBX_SIZE);

  sli_resource_free(&hw->sli, SLI_RSRC_FCOE_VPI, sport->indicator);
 }

 return rc;
}
