
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int rtc; int atv; int tmm; int p_type; int blk_size; int app_tag; } ;
typedef TYPE_2__ sli4_req_common_set_features_xfer_rdy_t10pi_t ;
typedef int param ;
struct TYPE_8__ {scalar_t__ dif_mode; int auto_xfer_rdy_p_type; int auto_xfer_rdy_blk_size_chip; int auto_xfer_rdy_app_tag_value; scalar_t__ auto_xfer_rdy_app_tag_valid; scalar_t__ auto_xfer_rdy_ref_tag_is_lba; } ;
struct TYPE_10__ {int os; int sli; TYPE_1__ config; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_DIF_MODE_INLINE ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int SLI4_BMBX_SIZE ;
 int SLI4_SET_FEATURES_SET_CONFIG_AUTO_XFER_RDY_T10PI ;
 int ocs_hw_command (TYPE_3__*,int *,int ,int *,int *) ;
 int ocs_log_err (int ,char*,int) ;
 int ocs_log_test (int ,char*,int,int,int,int ,int ) ;
 int ocs_memset (TYPE_2__*,int ,int) ;
 int sli_cmd_common_set_features (int *,int *,int ,int ,int,TYPE_2__*) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_config_auto_xfer_rdy_t10pi(ocs_hw_t *hw, uint8_t *buf)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 sli4_req_common_set_features_xfer_rdy_t10pi_t param;

 ocs_memset(&param, 0, sizeof(param));
 param.rtc = (hw->config.auto_xfer_rdy_ref_tag_is_lba ? 0 : 1);
 param.atv = (hw->config.auto_xfer_rdy_app_tag_valid ? 1 : 0);
 param.tmm = ((hw->config.dif_mode == OCS_HW_DIF_MODE_INLINE) ? 0 : 1);
 param.app_tag = hw->config.auto_xfer_rdy_app_tag_value;
 param.blk_size = hw->config.auto_xfer_rdy_blk_size_chip;

 switch (hw->config.auto_xfer_rdy_p_type) {
 case 1:
  param.p_type = 0;
  break;
 case 3:
  param.p_type = 2;
  break;
 default:
  ocs_log_err(hw->os, "unsupported p_type %d\n",
   hw->config.auto_xfer_rdy_p_type);
  return OCS_HW_RTN_ERROR;
 }


 sli_cmd_common_set_features(&hw->sli, buf, SLI4_BMBX_SIZE,
        SLI4_SET_FEATURES_SET_CONFIG_AUTO_XFER_RDY_T10PI,
        sizeof(param),
        &param);


 rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));
 if (rc) {
  ocs_log_err(hw->os, "ocs_hw_command returns %d\n", rc);
 } else {
  ocs_log_test(hw->os, "Auto XFER RDY T10 PI configured rtc:%d atv:%d p_type:%d app_tag:%x blk_size:%d\n",
    param.rtc, param.atv, param.p_type,
    param.app_tag, param.blk_size);
 }

 return rc;
}
