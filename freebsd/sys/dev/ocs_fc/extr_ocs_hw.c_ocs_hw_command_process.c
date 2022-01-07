
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int os; int cmd_lock; int cmd_head_count; int cmd_head; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_10__ {int arg; scalar_t__ buf; int (* cb ) (TYPE_1__*,int,scalar_t__,int ) ;} ;
typedef TYPE_2__ ocs_command_ctx_t ;
typedef int int32_t ;


 int ocs_free (int ,TYPE_2__*,int) ;
 int ocs_hw_cmd_submit_pending (TYPE_1__*) ;
 TYPE_2__* ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_log_err (int ,char*) ;
 int ocs_memcpy (scalar_t__,int *,size_t) ;
 int ocs_memset (TYPE_2__*,int ,int) ;
 int ocs_unlock (int *) ;
 int stub1 (TYPE_1__*,int,scalar_t__,int ) ;

__attribute__((used)) static int32_t
ocs_hw_command_process(ocs_hw_t *hw, int32_t status, uint8_t *mqe, size_t size)
{
 ocs_command_ctx_t *ctx = ((void*)0);

 ocs_lock(&hw->cmd_lock);
  if (((void*)0) == (ctx = ocs_list_remove_head(&hw->cmd_head))) {
   ocs_log_err(hw->os, "XXX no command context?!?\n");
   ocs_unlock(&hw->cmd_lock);
   return -1;
  }

  hw->cmd_head_count--;


  ocs_hw_cmd_submit_pending(hw);

 ocs_unlock(&hw->cmd_lock);

 if (ctx->cb) {
  if (ctx->buf) {
   ocs_memcpy(ctx->buf, mqe, size);
  }
  ctx->cb(hw, status, ctx->buf, ctx->arg);
 }

 ocs_memset(ctx, 0, sizeof(ocs_command_ctx_t));
 ocs_free(hw->os, ctx, sizeof(ocs_command_ctx_t));

 return 0;
}
