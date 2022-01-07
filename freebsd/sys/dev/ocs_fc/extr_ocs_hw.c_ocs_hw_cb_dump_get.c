
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {int eof; int actual_read_length; } ;
typedef TYPE_3__ sli4_res_common_read_object_t ;
struct TYPE_10__ {scalar_t__ status; } ;
struct TYPE_9__ {scalar_t__ embed; } ;
struct TYPE_12__ {TYPE_2__ hdr; TYPE_1__ payload; } ;
typedef TYPE_4__ sli4_cmd_sli_config_t ;
struct TYPE_13__ {int os; } ;
typedef TYPE_5__ ocs_hw_t ;
struct TYPE_14__ {struct TYPE_14__* mbox_cmd; int arg; int (* cb ) (scalar_t__,int ,int ,int ) ;} ;
typedef TYPE_6__ ocs_hw_dump_get_cb_arg_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_free (int ,TYPE_6__*,int) ;
 int stub1 (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cb_dump_get(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 sli4_cmd_sli_config_t* mbox_rsp = (sli4_cmd_sli_config_t*) mqe;
 sli4_res_common_read_object_t* rd_obj_rsp = (sli4_res_common_read_object_t*) mbox_rsp->payload.embed;
 ocs_hw_dump_get_cb_arg_t *cb_arg = arg;
 uint32_t bytes_read;
 uint8_t eof;

 bytes_read = rd_obj_rsp->actual_read_length;
 eof = rd_obj_rsp->eof;

 if (cb_arg) {
  if (cb_arg->cb) {
   if ((status == 0) && mbox_rsp->hdr.status) {
    status = mbox_rsp->hdr.status;
   }
   cb_arg->cb(status, bytes_read, eof, cb_arg->arg);
  }

  ocs_free(hw->os, cb_arg->mbox_cmd, SLI4_BMBX_SIZE);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_dump_get_cb_arg_t));
 }

 return 0;
}
