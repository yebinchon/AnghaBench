
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int os; int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_async_cb_t ;
struct TYPE_9__ {int cmd; void* arg; int callback; } ;
typedef TYPE_2__ ocs_hw_async_call_ctx_t ;
typedef int int32_t ;


 int OCS_CMD_NOWAIT ;
 int OCS_HW_RTN_NO_MEMORY ;
 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_free (int ,TYPE_2__*,int) ;
 int ocs_hw_async_cb ;
 scalar_t__ ocs_hw_command (TYPE_1__*,int ,int ,int ,TYPE_2__*) ;
 int ocs_log_err (int ,char*) ;
 TYPE_2__* ocs_malloc (int ,int,int) ;
 scalar_t__ sli_cmd_common_nop (int *,int ,int,int ) ;

int32_t
ocs_hw_async_call(ocs_hw_t *hw, ocs_hw_async_cb_t callback, void *arg)
{
 int32_t rc = 0;
 ocs_hw_async_call_ctx_t *ctx;






 ctx = ocs_malloc(hw->os, sizeof(*ctx), OCS_M_ZERO | OCS_M_NOWAIT);
 if (ctx == ((void*)0)) {
  ocs_log_err(hw->os, "failed to malloc async call context\n");
  return OCS_HW_RTN_NO_MEMORY;
 }
 ctx->callback = callback;
 ctx->arg = arg;


 if (sli_cmd_common_nop(&hw->sli, ctx->cmd, sizeof(ctx->cmd), 0) == 0) {
  ocs_log_err(hw->os, "COMMON_NOP format failure\n");
  ocs_free(hw->os, ctx, sizeof(*ctx));
  rc = -1;
 }

 if (ocs_hw_command(hw, ctx->cmd, OCS_CMD_NOWAIT, ocs_hw_async_cb, ctx)) {
  ocs_log_err(hw->os, "COMMON_NOP command failure\n");
  ocs_free(hw->os, ctx, sizeof(*ctx));
  rc = -1;
 }
 return rc;
}
