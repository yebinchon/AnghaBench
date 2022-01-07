
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd_work_ent {int ret; unsigned long idx; int status; int in; int done; scalar_t__ polling; } ;


 int ETIMEDOUT ;
 int MLX5_CMD_MODE_EVENTS ;
 int MLX5_CMD_TIMEOUT_MSEC ;
 int deliv_status_to_str (int ) ;
 int mlx5_cmd_comp_handler (struct mlx5_core_dev*,unsigned long,int ) ;
 int mlx5_command_str (int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int,int ,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int msg_to_opcode (int ) ;
 int wait_for_completion (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int wait_func(struct mlx5_core_dev *dev, struct mlx5_cmd_work_ent *ent)
{
 int timeout = msecs_to_jiffies(MLX5_CMD_TIMEOUT_MSEC);
 int err;

 if (ent->polling) {
  wait_for_completion(&ent->done);
 } else if (!wait_for_completion_timeout(&ent->done, timeout)) {
                ent->ret = -ETIMEDOUT;
                mlx5_cmd_comp_handler(dev, 1UL << ent->idx, MLX5_CMD_MODE_EVENTS);
        }

        err = ent->ret;

 if (err == -ETIMEDOUT) {
  mlx5_core_warn(dev, "%s(0x%x) timeout. Will cause a leak of a command resource\n",
          mlx5_command_str(msg_to_opcode(ent->in)),
          msg_to_opcode(ent->in));
 }
 mlx5_core_dbg(dev, "err %d, delivery status %s(%d)\n",
        err, deliv_status_to_str(ent->status), ent->status);

 return err;
}
