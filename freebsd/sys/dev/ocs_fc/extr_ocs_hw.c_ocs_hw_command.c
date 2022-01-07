
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void uint8_t ;
typedef int uint32_t ;
struct TYPE_14__ {void* virt; } ;
struct TYPE_17__ {TYPE_1__ bmbx; } ;
struct TYPE_15__ {int expiration_logged; scalar_t__ state; int cmd_lock; int cmd_pending; int os; TYPE_4__ sli; TYPE_6__* mq; int watchdog_timeout; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;
struct TYPE_16__ {TYPE_2__* ctx; void* buf; void* arg; void* cb; } ;
typedef TYPE_3__ ocs_command_ctx_t ;
struct TYPE_18__ {scalar_t__ length; } ;


 int OCS_CMD_NOWAIT ;
 int OCS_CMD_POLL ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_NO_RESOURCES ;
 int OCS_HW_RTN_SUCCESS ;
 scalar_t__ OCS_HW_STATE_ACTIVE ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int SLI4_BMBX_SIZE ;
 int SLI4_REG_SLIPORT_ERROR1 ;
 int SLI4_REG_SLIPORT_ERROR2 ;
 int SLI4_REG_SLIPORT_STATUS ;
 int ocs_free (int ,TYPE_3__*,int) ;
 scalar_t__ ocs_hw_cmd_submit_pending (TYPE_2__*) ;
 int ocs_list_add_tail (int *,TYPE_3__*) ;
 int ocs_lock (int *) ;
 int ocs_log_crit (int ,char*,...) ;
 int ocs_log_err (int ,char*,...) ;
 TYPE_3__* ocs_malloc (int ,int,int) ;
 int ocs_memcpy (void*,void*,int ) ;
 int ocs_memset (void*,int ,int ) ;
 int ocs_unlock (int *) ;
 scalar_t__ sli_bmbx_command (TYPE_4__*) ;
 scalar_t__ sli_fw_error_status (TYPE_4__*) ;
 int sli_queue_is_empty (TYPE_4__*,TYPE_6__*) ;
 int sli_reg_read (TYPE_4__*,int ) ;

ocs_hw_rtn_e
ocs_hw_command(ocs_hw_t *hw, uint8_t *cmd, uint32_t opts, void *cb, void *arg)
{
 ocs_hw_rtn_e rc = OCS_HW_RTN_ERROR;





 if (sli_fw_error_status(&hw->sli) > 0) {
  uint32_t err1 = sli_reg_read(&hw->sli, SLI4_REG_SLIPORT_ERROR1);
  uint32_t err2 = sli_reg_read(&hw->sli, SLI4_REG_SLIPORT_ERROR2);
  if (hw->expiration_logged == 0 && err1 == 0x2 && err2 == 0x10) {
   hw->expiration_logged = 1;
   ocs_log_crit(hw->os,"Emulex: Heartbeat expired after %d seconds\n",
     hw->watchdog_timeout);
  }
  ocs_log_crit(hw->os, "Chip is in an error state - reset needed\n");
  ocs_log_crit(hw->os, "status=%#x error1=%#x error2=%#x\n",
   sli_reg_read(&hw->sli, SLI4_REG_SLIPORT_STATUS),
   err1, err2);

  return OCS_HW_RTN_ERROR;
 }

 if (OCS_CMD_POLL == opts) {

  ocs_lock(&hw->cmd_lock);
  if (hw->mq->length && !sli_queue_is_empty(&hw->sli, hw->mq)) {





   rc = OCS_HW_RTN_ERROR;
  } else {
   void *bmbx = hw->sli.bmbx.virt;

   ocs_memset(bmbx, 0, SLI4_BMBX_SIZE);
   ocs_memcpy(bmbx, cmd, SLI4_BMBX_SIZE);

   if (sli_bmbx_command(&hw->sli) == 0) {
    rc = OCS_HW_RTN_SUCCESS;
    ocs_memcpy(cmd, bmbx, SLI4_BMBX_SIZE);
   }
  }
  ocs_unlock(&hw->cmd_lock);
 } else if (OCS_CMD_NOWAIT == opts) {
  ocs_command_ctx_t *ctx = ((void*)0);

  ctx = ocs_malloc(hw->os, sizeof(ocs_command_ctx_t), OCS_M_ZERO | OCS_M_NOWAIT);
  if (!ctx) {
   ocs_log_err(hw->os, "can't allocate command context\n");
   return OCS_HW_RTN_NO_RESOURCES;
  }

  if (hw->state != OCS_HW_STATE_ACTIVE) {
   ocs_log_err(hw->os, "Can't send command, HW state=%d\n", hw->state);
   ocs_free(hw->os, ctx, sizeof(*ctx));
   return OCS_HW_RTN_ERROR;
  }

  if (cb) {
   ctx->cb = cb;
   ctx->arg = arg;
  }
  ctx->buf = cmd;
  ctx->ctx = hw;

  ocs_lock(&hw->cmd_lock);


   ocs_list_add_tail(&hw->cmd_pending, ctx);


   if (ocs_hw_cmd_submit_pending(hw) == 0) {
    rc = OCS_HW_RTN_SUCCESS;
   }

  ocs_unlock(&hw->cmd_lock);
 }

 return rc;
}
