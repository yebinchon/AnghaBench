
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; struct mlx4_alloc_vpp_param* buf; } ;
struct mlx4_alloc_vpp_param {int * vpp_p_up; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_ALLOCATE_VPP_ALLOCATE ;
 int MLX4_CMD_ALLOCATE_VPP ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_NUM_UP ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int cpu_to_be32 (int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_ALLOCATE_VPP_set(struct mlx4_dev *dev, u8 port, u8 *vpp_p_up)
{
 int i;
 int err;
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_alloc_vpp_param *in_param;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);

 in_param = mailbox->buf;

 for (i = 0; i < MLX4_NUM_UP; i++)
  in_param->vpp_p_up[i] = cpu_to_be32(vpp_p_up[i]);

 err = mlx4_cmd(dev, mailbox->dma, port,
         MLX4_ALLOCATE_VPP_ALLOCATE,
         MLX4_CMD_ALLOCATE_VPP,
         MLX4_CMD_TIME_CLASS_A,
         MLX4_CMD_NATIVE);

 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}
