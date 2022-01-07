
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_sli_config_t ;
struct TYPE_9__ {int os; } ;
typedef TYPE_3__ ocs_hw_t ;
struct TYPE_10__ {struct TYPE_10__* mbox_cmd; int arg; int (* cb ) (scalar_t__,int ) ;} ;
typedef TYPE_4__ ocs_hw_dump_clear_cb_arg_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_4__*,int) ;
 int stub1 (scalar_t__,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cb_dump_clear(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_dump_clear_cb_arg_t *cb_arg = arg;
 sli4_cmd_sli_config_t* mbox_rsp = (sli4_cmd_sli_config_t*) mqe;

 if (cb_arg) {
  if (cb_arg->cb) {
   if ((status == 0) && mbox_rsp->hdr.status) {
    status = mbox_rsp->hdr.status;
   }
   cb_arg->cb(status, cb_arg->arg);
  }

  ocs_free(hw->os, cb_arg->mbox_cmd, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_dump_clear_cb_arg_t));
 }

 return 0;
}
