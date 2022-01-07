
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int poll_sem; int comm_toggle; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int persist; } ;


 int CMD_STAT_INTERNAL_ERR ;
 int EAGAIN ;
 int MLX4_COMM_CMD_RESET ;
 int MLX4_DELAY_RESET_SLAVE ;
 int comm_pending (struct mlx4_dev*) ;
 int cond_resched () ;
 int down (int *) ;
 unsigned long jiffies ;
 scalar_t__ mlx4_comm_cmd_post (struct mlx4_dev*,int ,int ) ;
 int mlx4_enter_error_state (int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_status_to_errno (int ) ;
 int mlx4_warn (struct mlx4_dev*,char*,int ,...) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static int mlx4_comm_cmd_poll(struct mlx4_dev *dev, u8 cmd, u16 param,
         unsigned long timeout)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 unsigned long end;
 int err = 0;
 int ret_from_pending = 0;


 if (comm_pending(dev)) {
  mlx4_warn(dev, "Communication channel is not idle - my toggle is %d (cmd:0x%x)\n",
     priv->cmd.comm_toggle, cmd);
  return -EAGAIN;
 }


 down(&priv->cmd.poll_sem);
 if (mlx4_comm_cmd_post(dev, cmd, param)) {



  err = mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);
  goto out;
 }

 end = msecs_to_jiffies(timeout) + jiffies;
 while (comm_pending(dev) && time_before(jiffies, end))
  cond_resched();
 ret_from_pending = comm_pending(dev);
 if (ret_from_pending) {



  if ((MLX4_COMM_CMD_RESET == cmd)) {
   err = MLX4_DELAY_RESET_SLAVE;
   goto out;
  } else {
   mlx4_warn(dev, "Communication channel command 0x%x timed out\n",
      cmd);
   err = mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);
  }
 }

 if (err)
  mlx4_enter_error_state(dev->persist);
out:
 up(&priv->cmd.poll_sem);
 return err;
}
