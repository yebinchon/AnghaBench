
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int arg; int (* cb ) (int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_1__ uint8_t ;
struct TYPE_9__ {int preferred_d_id; int hard_alpa; int wwnn; int wwpn; } ;
typedef TYPE_2__ sli4_cmd_read_nvparms_t ;
struct TYPE_10__ {int os; } ;
typedef TYPE_3__ ocs_hw_t ;
typedef TYPE_1__ ocs_hw_get_nvparms_cb_arg_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_1__*,int) ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_get_nvparms_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_get_nvparms_cb_arg_t *cb_arg = arg;
 sli4_cmd_read_nvparms_t* mbox_rsp = (sli4_cmd_read_nvparms_t*) mqe;

 if (cb_arg->cb) {
  cb_arg->cb(status, mbox_rsp->wwpn, mbox_rsp->wwnn, mbox_rsp->hard_alpa,
    mbox_rsp->preferred_d_id, cb_arg->arg);
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 ocs_free(hw->os, cb_arg, sizeof(ocs_hw_get_nvparms_cb_arg_t));

 return 0;
}
