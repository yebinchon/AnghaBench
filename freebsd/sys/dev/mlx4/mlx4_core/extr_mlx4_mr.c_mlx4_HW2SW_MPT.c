
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_HW2SW_MPT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static int mlx4_HW2SW_MPT(struct mlx4_dev *dev, struct mlx4_cmd_mailbox *mailbox,
     int mpt_index)
{
 return mlx4_cmd_box(dev, 0, mailbox ? mailbox->dma : 0, mpt_index,
       !mailbox, MLX4_CMD_HW2SW_MPT,
       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);
}
