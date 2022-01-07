
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int arg; int (* cb ) (scalar_t__,int ,int ,int ) ;} ;
typedef TYPE_3__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_14__ {int change_status; int actual_write_length; } ;
typedef TYPE_4__ sli4_res_common_write_object_t ;
struct TYPE_12__ {scalar_t__ status; } ;
struct TYPE_11__ {int embed; } ;
struct TYPE_15__ {TYPE_2__ hdr; TYPE_1__ payload; } ;
typedef TYPE_5__ sli4_cmd_sli_config_t ;
struct TYPE_16__ {int os; } ;
typedef TYPE_6__ ocs_hw_t ;
typedef TYPE_3__ ocs_hw_fw_write_cb_arg_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_3__*,int) ;
 int stub1 (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cb_fw_write(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{

 sli4_cmd_sli_config_t* mbox_rsp = (sli4_cmd_sli_config_t*) mqe;
 sli4_res_common_write_object_t* wr_obj_rsp = (sli4_res_common_write_object_t*) &(mbox_rsp->payload.embed);
 ocs_hw_fw_write_cb_arg_t *cb_arg = arg;
 uint32_t bytes_written;
 uint16_t mbox_status;
 uint32_t change_status;

 bytes_written = wr_obj_rsp->actual_write_length;
 mbox_status = mbox_rsp->hdr.status;
 change_status = wr_obj_rsp->change_status;

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);

 if (cb_arg) {
  if (cb_arg->cb) {
   if ((status == 0) && mbox_status) {
    status = mbox_status;
   }
   cb_arg->cb(status, bytes_written, change_status, cb_arg->arg);
  }

  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_fw_write_cb_arg_t));
 }

 return 0;

}
