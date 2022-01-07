
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_7__ {void* qry; void* hck; } ;
typedef TYPE_1__ sli4_req_common_set_features_health_check_t ;
typedef int param ;
struct TYPE_8__ {int os; int sli; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef scalar_t__ ocs_hw_rtn_e ;


 int OCS_CMD_POLL ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int SLI4_BMBX_SIZE ;
 int SLI4_SET_FEATURES_SLI_PORT_HEALTH_CHECK ;
 scalar_t__ ocs_hw_command (TYPE_2__*,void**,int ,int *,int *) ;
 int ocs_log_err (int ,char*,scalar_t__) ;
 int ocs_log_test (int ,char*) ;
 int ocs_memset (TYPE_1__*,int ,int) ;
 int sli_cmd_common_set_features (int *,void**,int,int ,int,TYPE_1__*) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_config_sli_port_health_check(ocs_hw_t *hw, uint8_t query, uint8_t enable)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_SUCCESS;
 uint8_t buf[SLI4_BMBX_SIZE];
 sli4_req_common_set_features_health_check_t param;

 ocs_memset(&param, 0, sizeof(param));
 param.hck = enable;
 param.qry = query;


 sli_cmd_common_set_features(&hw->sli, buf, SLI4_BMBX_SIZE,
        SLI4_SET_FEATURES_SLI_PORT_HEALTH_CHECK,
        sizeof(param),
        &param);

 rc = ocs_hw_command(hw, buf, OCS_CMD_POLL, ((void*)0), ((void*)0));
 if (rc) {
  ocs_log_err(hw->os, "ocs_hw_command returns %d\n", rc);
 } else {
  ocs_log_test(hw->os, "SLI Port Health Check is enabled \n");
 }

 return rc;
}
