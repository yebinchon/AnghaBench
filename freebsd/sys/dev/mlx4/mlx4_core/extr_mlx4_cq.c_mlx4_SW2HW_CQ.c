
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_SW2HW_CQ ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_SW2HW_CQ(struct mlx4_dev *dev, struct mlx4_cmd_mailbox *mailbox,
    int cq_num)
{
 return mlx4_cmd(dev, mailbox->dma, cq_num, 0,
   MLX4_CMD_SW2HW_CQ, MLX4_CMD_TIME_CLASS_A,
   MLX4_CMD_WRAPPED);
}
