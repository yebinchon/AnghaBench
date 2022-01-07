
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;
typedef int gfp_t ;


 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_OP_MAP_ICM ;
 int RES_QP ;
 int __mlx4_qp_alloc_icm (struct mlx4_dev*,int,int ) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int set_param_l (int *,int) ;

__attribute__((used)) static int mlx4_qp_alloc_icm(struct mlx4_dev *dev, int qpn, gfp_t gfp)
{
 u64 param = 0;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&param, qpn);
  return mlx4_cmd_imm(dev, param, &param, RES_QP, RES_OP_MAP_ICM,
        MLX4_CMD_ALLOC_RES, MLX4_CMD_TIME_CLASS_A,
        MLX4_CMD_WRAPPED);
 }
 return __mlx4_qp_alloc_icm(dev, qpn, gfp);
}
