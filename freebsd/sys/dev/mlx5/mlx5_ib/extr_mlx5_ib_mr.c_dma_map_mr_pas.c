
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {struct device* dma_device; } ;
struct mlx5_ib_dev {TYPE_1__ ib_dev; } ;
struct ib_umem {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int __be64 ;


 int ALIGN (int,int ) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_IB_MTT_PRESENT ;
 scalar_t__ MLX5_UMR_ALIGN ;
 int MLX5_UMR_MTT_ALIGNMENT ;
 int * PTR_ALIGN (int *,scalar_t__) ;
 int dma_map_single (struct device*,int *,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int memset (int *,int ,int) ;
 int mlx5_ib_populate_pas (struct mlx5_ib_dev*,struct ib_umem*,int,int *,int ) ;

__attribute__((used)) static int dma_map_mr_pas(struct mlx5_ib_dev *dev, struct ib_umem *umem,
     int npages, int page_shift, int *size,
     __be64 **mr_pas, dma_addr_t *dma)
{
 __be64 *pas;
 struct device *ddev = dev->ib_dev.dma_device;






 *size = ALIGN(sizeof(u64) * npages, MLX5_UMR_MTT_ALIGNMENT);
 *mr_pas = kmalloc(*size + MLX5_UMR_ALIGN - 1, GFP_KERNEL);
 if (!(*mr_pas))
  return -ENOMEM;

 pas = PTR_ALIGN(*mr_pas, MLX5_UMR_ALIGN);
 mlx5_ib_populate_pas(dev, umem, page_shift, pas, MLX5_IB_MTT_PRESENT);

 memset(pas + npages, 0, *size - npages * sizeof(u64));

 *dma = dma_map_single(ddev, pas, *size, DMA_TO_DEVICE);
 if (dma_mapping_error(ddev, *dma)) {
  kfree(*mr_pas);
  return -ENOMEM;
 }

 return 0;
}
