
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_cb_post_xri ;
 scalar_t__ ocs_hw_command (TYPE_1__*,int *,int ,int ,int *) ;
 int ocs_log_err (int ,char*) ;
 int * ocs_malloc (int ,int ,int ) ;
 scalar_t__ sli_cmd_post_xri (int *,int *,int ,int ,int ) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_post_xri(ocs_hw_t *hw, uint32_t xri_start, uint32_t num_to_post)
{
 uint8_t *post_xri;
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;


 post_xri = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
 if (post_xri == ((void*)0)) {
  ocs_log_err(hw->os, "no buffer for command\n");
  return OCS_HW_RTN_NO_MEMORY;
 }


 if (sli_cmd_post_xri(&hw->sli, post_xri, SLI4_BMBX_SIZE,
        xri_start, num_to_post)) {
  rc = ocs_hw_command(hw, post_xri, OCS_CMD_NOWAIT, ocs_hw_cb_post_xri, ((void*)0));
  if (rc != OCS_HW_RTN_SUCCESS) {
   ocs_free(hw->os, post_xri, SLI4_BMBX_SIZE);
   ocs_log_err(hw->os, "post_xri failed\n");
  }
 }
 return rc;
}
