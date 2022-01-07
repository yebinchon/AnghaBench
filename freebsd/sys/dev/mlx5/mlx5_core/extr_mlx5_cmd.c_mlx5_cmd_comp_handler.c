
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned int u32 ;
struct mlx5_cmd {int* ent_mode; int checksum_disabled; struct mlx5_cmd_work_ent** ent_arr; TYPE_3__* cmd_page; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_work_ent {int status; int idx; scalar_t__ ret; TYPE_2__* lay; TYPE_3__* out; int ts2; int cb_timeout_work; scalar_t__ callback; } ;
typedef enum mlx5_cmd_mode { ____Placeholder_mlx5_cmd_mode } mlx5_cmd_mode ;
struct TYPE_4__ {int data; } ;
struct TYPE_6__ {TYPE_1__ first; } ;
struct TYPE_5__ {int status_own; int out; } ;


 int MLX5_DRIVER_STATUS_ABORTED ;
 int MLX5_TRIGGERED_CMD_COMP ;
 int cancel_delayed_work (int *) ;
 int complete_command (struct mlx5_cmd_work_ent*) ;
 int deliv_status_to_str (int) ;
 int dump_command (struct mlx5_core_dev*,struct mlx5_cmd_work_ent*,int ) ;
 int ffs (unsigned int) ;
 int free_ent (struct mlx5_cmd*,int ) ;
 int ktime_get_ns () ;
 int memcpy (int ,int ,int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,scalar_t__,int ,int) ;
 int mlx5_fwp_invalidate (TYPE_3__*) ;
 scalar_t__ verify_signature (struct mlx5_cmd_work_ent*) ;

void mlx5_cmd_comp_handler(struct mlx5_core_dev *dev, u64 vector_flags,
    enum mlx5_cmd_mode cmd_mode)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 struct mlx5_cmd_work_ent *ent;
 bool triggered = (vector_flags & MLX5_TRIGGERED_CMD_COMP) ? 1 : 0;
 u32 vector = vector_flags;
 int i;


 mlx5_fwp_invalidate(cmd->cmd_page);

 while (vector != 0) {
  i = ffs(vector) - 1;
  vector &= ~(1U << i);

  if (cmd->ent_mode[i] != cmd_mode)
   continue;
  ent = cmd->ent_arr[i];

  if (ent == ((void*)0))
   continue;
                if (ent->callback)
                        cancel_delayed_work(&ent->cb_timeout_work);
  ent->ts2 = ktime_get_ns();
  memcpy(ent->out->first.data, ent->lay->out,
         sizeof(ent->lay->out));

  mlx5_fwp_invalidate(ent->out);
  dump_command(dev, ent, 0);
  if (!ent->ret) {
   if (!cmd->checksum_disabled)
    ent->ret = verify_signature(ent);
   else
    ent->ret = 0;

   if (triggered)
    ent->status = MLX5_DRIVER_STATUS_ABORTED;
   else
    ent->status = ent->lay->status_own >> 1;

   mlx5_core_dbg(dev,
          "FW command ret 0x%x, status %s(0x%x)\n",
          ent->ret,
          deliv_status_to_str(ent->status),
          ent->status);
  }
  free_ent(cmd, ent->idx);
  complete_command(ent);
 }
}
