
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ virt; } ;
struct TYPE_12__ {TYPE_6__ payload; int arg; int (* cb ) (int ,scalar_t__,int ,int ,int ) ;} ;
typedef TYPE_2__ uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {scalar_t__ status; int response_length; } ;
struct TYPE_13__ {int page_data; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_res_common_read_transceiver_data_t ;
struct TYPE_14__ {int os; } ;
typedef TYPE_4__ ocs_hw_t ;
typedef TYPE_2__ ocs_hw_sfp_cb_arg_t ;
typedef TYPE_6__ ocs_dma_t ;
typedef scalar_t__ int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_dma_free (int ,TYPE_6__*) ;
 int ocs_free (int ,TYPE_2__*,int) ;
 int stub1 (int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cb_sfp(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{

 ocs_hw_sfp_cb_arg_t *cb_arg = arg;
 ocs_dma_t *payload = ((void*)0);
 sli4_res_common_read_transceiver_data_t* mbox_rsp = ((void*)0);
 uint32_t bytes_written;

 if (cb_arg) {
  payload = &(cb_arg->payload);
  if (cb_arg->cb) {
   mbox_rsp = (sli4_res_common_read_transceiver_data_t*) payload->virt;
   bytes_written = mbox_rsp->hdr.response_length;
   if ((status == 0) && mbox_rsp->hdr.status) {
    status = mbox_rsp->hdr.status;
   }
   cb_arg->cb(hw->os, status, bytes_written, mbox_rsp->page_data, cb_arg->arg);
  }

  ocs_dma_free(hw->os, &cb_arg->payload);
  ocs_free(hw->os, cb_arg, sizeof(ocs_hw_sfp_cb_arg_t));
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 return 0;
}
