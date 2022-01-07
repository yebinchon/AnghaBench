
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct mlx4_cmd_context {size_t next; int result; scalar_t__ fw_status; int done; int token; } ;
struct mlx4_cmd {size_t free_head; int event_sem; int context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {struct mlx4_cmd cmd; } ;


 int BUG_ON (int) ;
 int CMD_STAT_INTERNAL_ERR ;
 scalar_t__ CMD_STAT_MULTI_FUNC_REQ ;
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 scalar_t__ comm_pending (struct mlx4_dev*) ;
 int cond_resched () ;
 int down (int *) ;
 unsigned long jiffies ;
 scalar_t__ mlx4_closing_cmd_fatal_error (int ,scalar_t__) ;
 scalar_t__ mlx4_comm_cmd_post (struct mlx4_dev*,int ,int ) ;
 int mlx4_enter_error_state (TYPE_2__*) ;
 int mlx4_err (struct mlx4_dev*,char*,int ,scalar_t__) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_status_to_errno (int ) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ,int ) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int reinit_completion (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int up (int *) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int mlx4_comm_cmd_wait(struct mlx4_dev *dev, u8 vhcr_cmd,
         u16 param, u16 op, unsigned long timeout)
{
 struct mlx4_cmd *cmd = &mlx4_priv(dev)->cmd;
 struct mlx4_cmd_context *context;
 unsigned long end;
 int err = 0;

 down(&cmd->event_sem);

 spin_lock(&cmd->context_lock);
 BUG_ON(cmd->free_head < 0);
 context = &cmd->context[cmd->free_head];
 context->token += cmd->token_mask + 1;
 cmd->free_head = context->next;
 spin_unlock(&cmd->context_lock);

 reinit_completion(&context->done);

 if (mlx4_comm_cmd_post(dev, vhcr_cmd, param)) {



  err = mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);
  goto out;
 }

 if (!wait_for_completion_timeout(&context->done,
      msecs_to_jiffies(timeout))) {
  mlx4_warn(dev, "communication channel command 0x%x (op=0x%x) timed out\n",
     vhcr_cmd, op);
  goto out_reset;
 }

 err = context->result;
 if (err && context->fw_status != CMD_STAT_MULTI_FUNC_REQ) {
  mlx4_err(dev, "command 0x%x failed: fw status = 0x%x\n",
    vhcr_cmd, context->fw_status);
  if (mlx4_closing_cmd_fatal_error(op, context->fw_status))
   goto out_reset;
 }
 if (!(dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)) {
  end = msecs_to_jiffies(timeout) + jiffies;
  while (comm_pending(dev) && time_before(jiffies, end))
   cond_resched();
 }
 goto out;

out_reset:
 err = mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);
 mlx4_enter_error_state(dev->persist);
out:
 spin_lock(&cmd->context_lock);
 context->next = cmd->free_head;
 cmd->free_head = context - cmd->context;
 spin_unlock(&cmd->context_lock);

 up(&cmd->event_sem);
 return err;
}
