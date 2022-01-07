
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;


 int EBUSY ;
 int MLX5_VSC_DOMAIN_SEMAPHORES ;
 int mlx5_vsc_read (struct mlx5_core_dev*,scalar_t__,scalar_t__*) ;
 int mlx5_vsc_set_space (struct mlx5_core_dev*,int ) ;
 int mlx5_vsc_write (struct mlx5_core_dev*,scalar_t__,scalar_t__*) ;

int mlx5_vsc_unlock_addr_space(struct mlx5_core_dev *mdev, u32 addr)
{
 u32 data = 0;
 int ret;

 ret = mlx5_vsc_set_space(mdev, MLX5_VSC_DOMAIN_SEMAPHORES);
 if (ret)
  return ret;


 ret = mlx5_vsc_write(mdev, addr, &data);
 if (ret)
  return ret;


 ret = mlx5_vsc_read(mdev, addr, &data);
 if (ret)
  return ret;
 if (data != 0)
  return EBUSY;

 return 0;
}
