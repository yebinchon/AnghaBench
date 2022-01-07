
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_COUNTER ;
 int RES_OP_RESERVE ;
 int __mlx4_counter_alloc (struct mlx4_dev*,int *) ;
 int get_param_l (int *) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;

int mlx4_counter_alloc(struct mlx4_dev *dev, u32 *idx)
{
 u64 out_param;
 int err;

 if (mlx4_is_mfunc(dev)) {
  err = mlx4_cmd_imm(dev, 0, &out_param, RES_COUNTER,
       RES_OP_RESERVE, MLX4_CMD_ALLOC_RES,
       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  if (!err)
   *idx = get_param_l(&out_param);

  return err;
 }
 return __mlx4_counter_alloc(dev, idx);
}
