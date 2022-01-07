
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;



 int MLX5_INLINE_MODE_L2 ;
 int MLX5_INLINE_MODE_NONE ;
 int mlx5_query_nic_vport_min_inline (struct mlx5_core_dev*,int ,int *) ;
 int wqe_inline_mode ;

int mlx5_query_min_inline(struct mlx5_core_dev *mdev,
     u8 *min_inline_mode)
{
 int err;

 switch (MLX5_CAP_ETH(mdev, wqe_inline_mode)) {
 case 130:
  *min_inline_mode = MLX5_INLINE_MODE_L2;
  err = 0;
  break;
 case 128:
  err = mlx5_query_nic_vport_min_inline(mdev, 0, min_inline_mode);
  break;
 case 129:
  *min_inline_mode = MLX5_INLINE_MODE_NONE;
  err = 0;
  break;
 default:
  err = -EINVAL;
  break;
 }
 return err;
}
