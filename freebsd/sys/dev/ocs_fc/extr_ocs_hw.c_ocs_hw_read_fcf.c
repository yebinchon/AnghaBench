
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int os; int fcf_dmem; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef scalar_t__ int32_t ;


 int OCS_CMD_NOWAIT ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_NO_MEMORY ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_cb_read_fcf ;
 scalar_t__ ocs_hw_command (TYPE_1__*,int *,int ,int ,int *) ;
 int ocs_log_err (int ,char*) ;
 int ocs_log_test (int ,char*) ;
 int * ocs_malloc (int ,int ,int ) ;
 scalar_t__ sli_cmd_fcoe_read_fcf_table (int *,int *,int ,int *,int ) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_read_fcf(ocs_hw_t *hw, uint32_t index)
{
 uint8_t *buf = ((void*)0);
 int32_t rc = OCS_HW_RTN_ERROR;

 buf = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
 if (!buf) {
  ocs_log_err(hw->os, "no buffer for command\n");
  return OCS_HW_RTN_NO_MEMORY;
 }

 if (sli_cmd_fcoe_read_fcf_table(&hw->sli, buf, SLI4_BMBX_SIZE, &hw->fcf_dmem,
   index)) {
  rc = ocs_hw_command(hw, buf, OCS_CMD_NOWAIT, ocs_hw_cb_read_fcf, &hw->fcf_dmem);
 }

 if (rc != OCS_HW_RTN_SUCCESS) {
  ocs_log_test(hw->os, "FCOE_READ_FCF_TABLE failed\n");
  ocs_free(hw->os, buf, SLI4_BMBX_SIZE);
 }

 return rc;
}
