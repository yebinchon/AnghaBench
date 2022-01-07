
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cmd_head_count; int os; int mq; int sli; int cmd_head; int cmd_pending; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int buf; } ;
typedef TYPE_2__ ocs_command_ctx_t ;
typedef int int32_t ;


 int OCS_HW_MQ_DEPTH ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 TYPE_2__* ocs_list_remove_head (int *) ;
 int ocs_log_test (int ,char*,int) ;
 scalar_t__ sli_queue_write (int *,int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_cmd_submit_pending(ocs_hw_t *hw)
{
 ocs_command_ctx_t *ctx;
 int32_t rc = 0;




 while (hw->cmd_head_count < (OCS_HW_MQ_DEPTH - 1)) {
  ctx = ocs_list_remove_head(&hw->cmd_pending);
  if (ctx == ((void*)0)) {
   break;
  }
  ocs_list_add_tail(&hw->cmd_head, ctx);
  hw->cmd_head_count++;
  if (sli_queue_write(&hw->sli, hw->mq, ctx->buf) < 0) {
   ocs_log_test(hw->os, "sli_queue_write failed: %d\n", rc);
   rc = -1;
   break;
  }
 }
 return rc;
}
