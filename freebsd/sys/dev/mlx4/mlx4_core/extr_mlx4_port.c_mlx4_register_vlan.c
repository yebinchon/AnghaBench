
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;
 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_OP_RESERVE_AND_MAP ;
 scalar_t__ RES_VLAN ;
 int __mlx4_register_vlan (struct mlx4_dev*,scalar_t__,int,int*) ;
 int get_param_l (int *) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int,int *,int,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;

int mlx4_register_vlan(struct mlx4_dev *dev, u8 port, u16 vlan, int *index)
{
 u64 out_param = 0;
 int err;

 if (vlan > 4095)
  return -EINVAL;

 if (mlx4_is_mfunc(dev)) {
  err = mlx4_cmd_imm(dev, vlan, &out_param,
       ((u32) port) << 8 | (u32) RES_VLAN,
       RES_OP_RESERVE_AND_MAP, MLX4_CMD_ALLOC_RES,
       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  if (!err)
   *index = get_param_l(&out_param);

  return err;
 }
 return __mlx4_register_vlan(dev, port, vlan, index);
}
