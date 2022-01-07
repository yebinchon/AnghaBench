
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct mlx5_fw_page {int dma_addr; int func_id; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_DMA_LOCK (struct mlx5_core_dev*) ;
 int MLX5_DMA_UNLOCK (struct mlx5_core_dev*) ;
 struct mlx5_fw_page* mlx5_fwp_alloc (struct mlx5_core_dev*,int ,int) ;
 int mlx5_fwp_free (struct mlx5_fw_page*) ;
 int mlx5_fwp_invalidate (struct mlx5_fw_page*) ;
 int mlx5_insert_fw_page_locked (struct mlx5_core_dev*,struct mlx5_fw_page*) ;

__attribute__((used)) static int
alloc_4k(struct mlx5_core_dev *dev, u64 *addr, u16 func_id)
{
 struct mlx5_fw_page *fwp;
 int err;

 fwp = mlx5_fwp_alloc(dev, GFP_KERNEL, 1);
 if (fwp == ((void*)0))
  return (-ENOMEM);

 fwp->func_id = func_id;

 MLX5_DMA_LOCK(dev);
 err = mlx5_insert_fw_page_locked(dev, fwp);
 MLX5_DMA_UNLOCK(dev);

 if (err != 0) {
  mlx5_fwp_free(fwp);
 } else {

  mlx5_fwp_invalidate(fwp);


  *addr = fwp->dma_addr;
 }
 return (err);
}
