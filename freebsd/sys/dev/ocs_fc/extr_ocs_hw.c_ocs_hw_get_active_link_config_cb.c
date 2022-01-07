
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int active_link_config_id; } ;
typedef TYPE_1__ sli4_res_common_get_reconfig_link_info_t ;
struct TYPE_8__ {int os; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_linkcfg_e ;
struct TYPE_10__ {TYPE_1__* virt; } ;
struct TYPE_9__ {scalar_t__ opts; TYPE_6__ dma_cmd; int arg; int (* cb ) (int ,int ,int ) ;} ;
typedef TYPE_3__ ocs_hw_linkcfg_cb_arg_t ;
typedef int int32_t ;


 scalar_t__ OCS_CMD_POLL ;
 int OCS_HW_LINKCFG_NA ;
 int ocs_dma_free (int ,TYPE_6__*) ;
 int ocs_free (int ,TYPE_3__*,int) ;
 int ocs_hw_linkcfg_from_config_id (int ) ;
 int ocs_log_test (int ,char*,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
ocs_hw_get_active_link_config_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_linkcfg_cb_arg_t *cb_arg = (ocs_hw_linkcfg_cb_arg_t *)arg;
 sli4_res_common_get_reconfig_link_info_t *rsp = cb_arg->dma_cmd.virt;
 ocs_hw_linkcfg_e value = OCS_HW_LINKCFG_NA;

 if (status) {
  ocs_log_test(hw->os, "GET_RECONFIG_LINK_INFO failed, status=%d\n", status);
 } else {

  value = ocs_hw_linkcfg_from_config_id(rsp->active_link_config_id);
 }


 if (cb_arg->cb) {
  cb_arg->cb(status, value, cb_arg->arg);
 }


 if (cb_arg->opts != OCS_CMD_POLL) {
  ocs_dma_free(hw->os, &cb_arg->dma_cmd);
  ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
 }
}
