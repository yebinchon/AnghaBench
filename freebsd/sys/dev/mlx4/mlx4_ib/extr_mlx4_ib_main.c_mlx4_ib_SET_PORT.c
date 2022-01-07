
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_ib_dev {TYPE_1__* dev; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
typedef int __be32 ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_SET_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_FLAG_OLD_PORT_CMDS ;
 int MLX4_SET_PORT_IB_OPCODE ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int cpu_to_be32 (int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (TYPE_1__*) ;
 int mlx4_cmd (TYPE_1__*,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (TYPE_1__*,struct mlx4_cmd_mailbox*) ;

__attribute__((used)) static int mlx4_ib_SET_PORT(struct mlx4_ib_dev *dev, u8 port, int reset_qkey_viols,
       u32 cap_mask)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(dev->dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 if (dev->dev->flags & MLX4_FLAG_OLD_PORT_CMDS) {
  *(u8 *) mailbox->buf = !!reset_qkey_viols << 6;
  ((__be32 *) mailbox->buf)[2] = cpu_to_be32(cap_mask);
 } else {
  ((u8 *) mailbox->buf)[3] = !!reset_qkey_viols;
  ((__be32 *) mailbox->buf)[1] = cpu_to_be32(cap_mask);
 }

 err = mlx4_cmd(dev->dev, mailbox->dma, port, MLX4_SET_PORT_IB_OPCODE,
         MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
         MLX4_CMD_WRAPPED);

 mlx4_free_cmd_mailbox(dev->dev, mailbox);
 return err;
}
