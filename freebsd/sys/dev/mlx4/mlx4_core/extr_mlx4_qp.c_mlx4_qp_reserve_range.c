
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ alloc_res_qp_mask; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_OP_RESERVE ;
 int RES_QP ;
 int __mlx4_qp_reserve_range (struct mlx4_dev*,int,int,int*,scalar_t__) ;
 int get_param_l (int *) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int set_param_h (int *,int) ;
 int set_param_l (int *,int) ;

int mlx4_qp_reserve_range(struct mlx4_dev *dev, int cnt, int align,
     int *base, u8 flags)
{
 u64 in_param = 0;
 u64 out_param;
 int err;


 flags &= dev->caps.alloc_res_qp_mask;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&in_param, (((u32)flags) << 24) | (u32)cnt);
  set_param_h(&in_param, align);
  err = mlx4_cmd_imm(dev, in_param, &out_param,
       RES_QP, RES_OP_RESERVE,
       MLX4_CMD_ALLOC_RES,
       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  if (err)
   return err;

  *base = get_param_l(&out_param);
  return 0;
 }
 return __mlx4_qp_reserve_range(dev, cnt, align, base, flags);
}
