
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int arg; int (* cb ) (int ,int ,int ) ;} ;
typedef TYPE_2__ uint8_t ;
typedef int uint32_t ;
struct TYPE_12__ {int active_profile_id; } ;
typedef TYPE_3__ sli4_res_common_get_active_profile_t ;
struct TYPE_10__ {scalar_t__ embed; } ;
struct TYPE_13__ {TYPE_1__ payload; } ;
typedef TYPE_4__ sli4_cmd_sli_config_t ;
struct TYPE_14__ {int os; } ;
typedef TYPE_5__ ocs_hw_t ;
typedef TYPE_2__ ocs_hw_get_active_profile_cb_arg_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_2__*,int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_get_active_profile_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_get_active_profile_cb_arg_t *cb_arg = arg;
 sli4_cmd_sli_config_t* mbox_rsp = (sli4_cmd_sli_config_t*) mqe;
 sli4_res_common_get_active_profile_t* response = (sli4_res_common_get_active_profile_t*) mbox_rsp->payload.embed;
 uint32_t active_profile;

 active_profile = response->active_profile_id;

 if (cb_arg->cb) {
  cb_arg->cb(status, active_profile, cb_arg->arg);
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 ocs_free(hw->os, cb_arg, sizeof(ocs_hw_get_active_profile_cb_arg_t));

 return 0;
}
