
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
struct TYPE_12__ {scalar_t__ status; } ;
typedef TYPE_4__ sli4_mbox_command_header_t ;
struct TYPE_13__ {size_t index; void* attached; void* node_group; } ;
typedef TYPE_5__ ocs_remote_node_t ;
struct TYPE_11__ {int rnode; } ;
struct TYPE_10__ {int (* rnode ) (int ,int ,TYPE_5__*) ;} ;
struct TYPE_14__ {int os; TYPE_3__ args; TYPE_2__ callback; TYPE_1__* rpi_ref; int sli; } ;
typedef TYPE_6__ ocs_hw_t ;
typedef int ocs_hw_remote_node_event_e ;
typedef int int32_t ;
struct TYPE_9__ {int rpi_attached; int rpi_count; } ;


 void* FALSE ;
 int OCS_HW_NODE_FREE_FAIL ;
 int OCS_HW_NODE_FREE_OK ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ SLI4_MBOX_STATUS_RPI_NOT_REG ;
 scalar_t__ TRUE ;
 scalar_t__ ocs_atomic_read (int *) ;
 int ocs_atomic_set (int *,int ) ;
 int ocs_free (int ,int *,int ) ;
 int ocs_log_debug (int ,char*,int,scalar_t__) ;
 scalar_t__ sli_get_hlm (int *) ;
 int stub1 (int ,int ,TYPE_5__*) ;

__attribute__((used)) static int32_t
ocs_hw_cb_node_free(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_remote_node_t *rnode = arg;
 sli4_mbox_command_header_t *hdr = (sli4_mbox_command_header_t *)mqe;
 ocs_hw_remote_node_event_e evt = OCS_HW_NODE_FREE_FAIL;
 int32_t rc = 0;

 if (status || hdr->status) {
  ocs_log_debug(hw->os, "bad status cqe=%#x mqe=%#x\n", status,
    hdr->status);







  if (!rnode->attached || ((sli_get_hlm(&hw->sli) == TRUE) && !rnode->node_group) ||
    (hdr->status != SLI4_MBOX_STATUS_RPI_NOT_REG)) {
   rc = -1;
  }
 }

 if (rc == 0) {
  rnode->node_group = FALSE;
  rnode->attached = FALSE;

  if (ocs_atomic_read(&hw->rpi_ref[rnode->index].rpi_count) == 0) {
   ocs_atomic_set(&hw->rpi_ref[rnode->index].rpi_attached, 0);
  }

  evt = OCS_HW_NODE_FREE_OK;
 }

 if (hw->callback.rnode != ((void*)0)) {
  hw->callback.rnode(hw->args.rnode, evt, rnode);
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);

 return rc;
}
