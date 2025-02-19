
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int hw; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_8__ {scalar_t__ status; int semaphore; } ;
typedef TYPE_2__ ocs_mgmt_linkcfg_arg_t ;
typedef scalar_t__ ocs_hw_rtn_e ;
typedef scalar_t__ ocs_hw_linkcfg_e ;


 int OCS_HW_PORT_SET_LINK_CONFIG ;
 int OCS_SEM_FOREVER ;
 scalar_t__ ocs_hw_linkcfg_from_mgmt (char*) ;
 scalar_t__ ocs_hw_port_control (int *,int ,uintptr_t,int ,TYPE_2__*) ;
 int ocs_log_err (TYPE_1__*,char*) ;
 int ocs_log_test (TYPE_1__*,char*,...) ;
 int ocs_mgmt_linkcfg_cb ;
 int ocs_sem_init (int *,int ,char*) ;
 scalar_t__ ocs_sem_p (int *,int ) ;

__attribute__((used)) static int
set_linkcfg(ocs_t *ocs, char *name, char *value)
{
 ocs_hw_linkcfg_e linkcfg;
 ocs_mgmt_linkcfg_arg_t cb_arg;
 ocs_hw_rtn_e status;

 ocs_sem_init(&cb_arg.semaphore, 0, "mgmt_linkcfg");


 linkcfg = ocs_hw_linkcfg_from_mgmt(value);


 status = ocs_hw_port_control(&ocs->hw, OCS_HW_PORT_SET_LINK_CONFIG,
          (uintptr_t)linkcfg, ocs_mgmt_linkcfg_cb, &cb_arg);
 if (status) {
  ocs_log_test(ocs, "ocs_hw_set_linkcfg failed\n");
  return -1;
 }

 if (ocs_sem_p(&cb_arg.semaphore, OCS_SEM_FOREVER)) {
  ocs_log_err(ocs, "ocs_sem_p failed\n");
  return -1;
 }

 if (cb_arg.status) {
  ocs_log_test(ocs, "failed to set linkcfg from HW status=%d\n",
        cb_arg.status);
  return -1;
 }

 return 0;
}
