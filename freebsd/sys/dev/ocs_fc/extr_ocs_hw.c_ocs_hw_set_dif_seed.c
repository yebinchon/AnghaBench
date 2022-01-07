
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int seed; } ;
typedef TYPE_2__ sli4_req_common_set_features_dif_seed_t ;
typedef int seed_param ;
struct TYPE_7__ {int dif_seed; } ;
struct TYPE_9__ {int os; TYPE_1__ config; int sli; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_ERROR ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int SLI4_BMBX_SIZE ;
 int SLI4_SET_FEATURES_DIF_SEED ;
 scalar_t__ ocs_hw_command (TYPE_3__*,int *,int ,int *,int *) ;
 int ocs_log_debug (int ,char*,int ) ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_memset (TYPE_2__*,int ,int) ;
 scalar_t__ sli_cmd_common_set_features (int *,int *,int,int ,int,int *) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_set_dif_seed(ocs_hw_t *hw)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint8_t buf[SLI4_BMBX_SIZE];
 sli4_req_common_set_features_dif_seed_t seed_param;

 ocs_memset(&seed_param, 0, sizeof(seed_param));
 seed_param.seed = hw->config.dif_seed;


 if (sli_cmd_common_set_features(&hw->sli, buf, SLI4_BMBX_SIZE,
     SLI4_SET_FEATURES_DIF_SEED,
     4,
     (uint32_t*)&seed_param)) {
  rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));
  if (rc) {
   ocs_log_err(hw->os, "ocs_hw_command returns %d\n", rc);
  } else {
   ocs_log_debug(hw->os, "DIF seed set to 0x%x\n",
     hw->config.dif_seed);
  }
 } else {
  ocs_log_err(hw->os, "sli_cmd_common_set_features failed\n");
  rc = OCS_HW_RTN_ERROR;
 }
 return rc;
}
