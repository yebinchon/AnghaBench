
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlx5_fw_page {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_DMA_LOCK (struct mlx5_core_dev*) ;
 int MLX5_DMA_UNLOCK (struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,long long) ;
 int mlx5_fwp_free (struct mlx5_fw_page*) ;
 struct mlx5_fw_page* mlx5_remove_fw_page_locked (struct mlx5_core_dev*,scalar_t__) ;

__attribute__((used)) static void
free_4k(struct mlx5_core_dev *dev, u64 addr)
{
 struct mlx5_fw_page *fwp;

 MLX5_DMA_LOCK(dev);
 fwp = mlx5_remove_fw_page_locked(dev, addr);
 MLX5_DMA_UNLOCK(dev);

 if (fwp == ((void*)0)) {
  mlx5_core_warn(dev, "Cannot free 4K page at 0x%llx\n", (long long)addr);
  return;
 }
 mlx5_fwp_free(fwp);
}
