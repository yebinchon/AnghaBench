
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_SET_PORT_BEACON_OPCODE ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int cpu_to_be32 (int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_SET_PORT_BEACON(struct mlx4_dev *dev, u8 port, u16 time)
{
 int err;
 struct mlx4_cmd_mailbox *mailbox;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 *((__be32 *)mailbox->buf) = cpu_to_be32(time);

 err = mlx4_cmd(dev, mailbox->dma, port, MLX4_SET_PORT_BEACON_OPCODE,
         MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
         MLX4_CMD_NATIVE);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
