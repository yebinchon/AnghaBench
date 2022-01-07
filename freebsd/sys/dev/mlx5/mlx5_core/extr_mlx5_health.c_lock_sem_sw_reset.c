
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int EBUSY ;
 int MLX5_SEMAPHORE_SW_RESET ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_vsc_lock (struct mlx5_core_dev*) ;
 int mlx5_vsc_lock_addr_space (struct mlx5_core_dev*,int ) ;
 int mlx5_vsc_unlock (struct mlx5_core_dev*) ;

__attribute__((used)) static int lock_sem_sw_reset(struct mlx5_core_dev *dev)
{
 int ret;


 ret = -mlx5_vsc_lock(dev);
 if (ret) {
  mlx5_core_warn(dev, "Timed out locking gateway %d\n", ret);
  return ret;
 }

 ret = -mlx5_vsc_lock_addr_space(dev, MLX5_SEMAPHORE_SW_RESET);
 if (ret) {
  if (ret == -EBUSY)
   mlx5_core_dbg(dev,
       "SW reset FW semaphore already locked, another function will handle the reset\n");
  else
   mlx5_core_warn(dev,
       "SW reset semaphore lock return %d\n", ret);
 }


 mlx5_vsc_unlock(dev);

 return ret;
}
