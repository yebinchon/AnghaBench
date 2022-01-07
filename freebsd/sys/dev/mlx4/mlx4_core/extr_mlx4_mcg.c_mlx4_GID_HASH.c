
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_MGID_HASH ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_GID_HASH(struct mlx4_dev *dev, struct mlx4_cmd_mailbox *mailbox,
    u16 *hash, u8 op_mod)
{
 u64 imm;
 int err;

 err = mlx4_cmd_imm(dev, mailbox->dma, &imm, 0, op_mod,
      MLX4_CMD_MGID_HASH, MLX4_CMD_TIME_CLASS_A,
      MLX4_CMD_NATIVE);

 if (!err)
  *hash = imm;

 return err;
}
