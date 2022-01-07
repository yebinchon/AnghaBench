
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int semaphore; scalar_t__ linkcfg; int status; } ;
typedef TYPE_1__ ocs_mgmt_linkcfg_arg_t ;
typedef scalar_t__ ocs_hw_linkcfg_e ;
typedef int int32_t ;


 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_mgmt_linkcfg_cb(int32_t status, uintptr_t value, void *arg)
{
 ocs_mgmt_linkcfg_arg_t *cb_arg = (ocs_mgmt_linkcfg_arg_t *)arg;
 cb_arg->status = status;
 cb_arg->linkcfg = (ocs_hw_linkcfg_e)value;
 ocs_sem_v(&cb_arg->semaphore);
}
