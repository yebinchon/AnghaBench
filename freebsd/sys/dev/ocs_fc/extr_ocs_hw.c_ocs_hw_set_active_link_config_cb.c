
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_6__ {scalar_t__ opts; int arg; int (* cb ) (int ,int ,int ) ;} ;
typedef TYPE_2__ ocs_hw_linkcfg_cb_arg_t ;
typedef int int32_t ;


 scalar_t__ OCS_CMD_POLL ;
 int ocs_free (int ,TYPE_2__*,int) ;
 int ocs_log_test (int ,char*,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
ocs_hw_set_active_link_config_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_linkcfg_cb_arg_t *cb_arg = (ocs_hw_linkcfg_cb_arg_t *)arg;

 if (status) {
  ocs_log_test(hw->os, "SET_RECONFIG_LINK_ID failed, status=%d\n", status);
 }


 if (cb_arg->cb) {
  cb_arg->cb(status, 0, cb_arg->arg);
 }


 if (cb_arg->opts != OCS_CMD_POLL) {
  ocs_free(hw->os, cb_arg, sizeof(*cb_arg));
 }
}
