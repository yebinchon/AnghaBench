
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_caps {int flags2; int flags; int function_caps; } ;
struct mlx4_dev {struct mlx4_caps caps; } ;


 int MLX4_DEV_CAP_FLAG2_CQE_STRIDE ;
 int MLX4_DEV_CAP_FLAG2_EQE_STRIDE ;
 int MLX4_DEV_CAP_FLAG_64B_CQE ;
 int MLX4_DEV_CAP_FLAG_64B_EQE ;
 int MLX4_FUNC_CAP_EQE_CQE_STRIDE ;
 int cache_line_size () ;
 int mlx4_dbg (struct mlx4_dev*,char*) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;

__attribute__((used)) static void mlx4_enable_cqe_eqe_stride(struct mlx4_dev *dev)
{
 struct mlx4_caps *dev_cap = &dev->caps;


 if (!(dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_EQE_STRIDE) ||
     !(dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_CQE_STRIDE))
  return;




 if (!(dev_cap->flags & MLX4_DEV_CAP_FLAG_64B_EQE) ||
     !(dev_cap->flags & MLX4_DEV_CAP_FLAG_64B_CQE)) {
  dev_cap->flags2 &= ~MLX4_DEV_CAP_FLAG2_CQE_STRIDE;
  dev_cap->flags2 &= ~MLX4_DEV_CAP_FLAG2_EQE_STRIDE;
  return;
 }

 if (cache_line_size() == 128 || cache_line_size() == 256) {
  mlx4_dbg(dev, "Enabling CQE stride cacheLine supported\n");

  dev_cap->flags &= ~MLX4_DEV_CAP_FLAG_64B_CQE;
  dev_cap->flags &= ~MLX4_DEV_CAP_FLAG_64B_EQE;

  if (mlx4_is_master(dev))
   dev_cap->function_caps |= MLX4_FUNC_CAP_EQE_CQE_STRIDE;
 } else {
  if (cache_line_size() != 32 && cache_line_size() != 64)
   mlx4_dbg(dev, "Disabling CQE stride, cacheLine size unsupported\n");
  dev_cap->flags2 &= ~MLX4_DEV_CAP_FLAG2_CQE_STRIDE;
  dev_cap->flags2 &= ~MLX4_DEV_CAP_FLAG2_EQE_STRIDE;
 }
}
