
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_5__ {scalar_t__ use_events; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {int state; } ;


 int CMD_STAT_INTERNAL_ERR ;
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 int mlx4_comm_cmd_poll (struct mlx4_dev*,int ,int ,unsigned long) ;
 int mlx4_comm_cmd_wait (struct mlx4_dev*,int ,int ,int ,unsigned long) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_status_to_errno (int ) ;

int mlx4_comm_cmd(struct mlx4_dev *dev, u8 cmd, u16 param,
    u16 op, unsigned long timeout)
{
 if (dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)
  return mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);

 if (mlx4_priv(dev)->cmd.use_events)
  return mlx4_comm_cmd_wait(dev, cmd, param, op, timeout);
 return mlx4_comm_cmd_poll(dev, cmd, param, timeout);
}
