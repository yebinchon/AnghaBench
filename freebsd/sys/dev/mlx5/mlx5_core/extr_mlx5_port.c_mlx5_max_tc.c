
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int max_tc ;

int mlx5_max_tc(struct mlx5_core_dev *mdev)
{
 u8 num_tc = MLX5_CAP_GEN(mdev, max_tc) ? : 8;

 return num_tc - 1;
}
