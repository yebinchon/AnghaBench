
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int fdt_xfer_hint; } ;
typedef TYPE_1__ sli4_req_common_set_features_set_fdt_xfer_hint_t ;
typedef int param ;
struct TYPE_8__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int SLI4_BMBX_SIZE ;
 int SLI4_SET_FEATURES_SET_FTD_XFER_HINT ;
 scalar_t__ ocs_hw_command (TYPE_2__*,int *,int ,int *,int *) ;
 int ocs_log_debug (int ,char*,int ) ;
 int ocs_log_warn (int ,char*,int ,scalar_t__) ;
 int ocs_memset (TYPE_1__*,int ,int) ;
 int sli_cmd_common_set_features (int *,int *,int,int ,int,TYPE_1__*) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_config_set_fdt_xfer_hint(ocs_hw_t *hw, uint32_t fdt_xfer_hint)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint8_t buf[SLI4_BMBX_SIZE];
 sli4_req_common_set_features_set_fdt_xfer_hint_t param;

 ocs_memset(&param, 0, sizeof(param));
 param.fdt_xfer_hint = fdt_xfer_hint;

 sli_cmd_common_set_features(&hw->sli, buf, SLI4_BMBX_SIZE,
        SLI4_SET_FEATURES_SET_FTD_XFER_HINT,
        sizeof(param),
        &param);


 rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));
 if (rc) {
  ocs_log_warn(hw->os, "set FDT hint %d failed: %d\n", fdt_xfer_hint, rc);
 } else {
  ocs_log_debug(hw->os, "Set FTD transfer hint to %d\n", param.fdt_xfer_hint);
 }

 return rc;
}
