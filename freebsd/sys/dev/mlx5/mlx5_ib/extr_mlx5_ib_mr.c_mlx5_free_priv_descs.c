
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ib_device* device; } ;
struct mlx5_ib_mr {int max_descs; int desc_size; int * descs; int descs_alloc; int desc_map; TYPE_1__ ibmr; } ;
struct ib_device {int dma_device; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void
mlx5_free_priv_descs(struct mlx5_ib_mr *mr)
{
 if (mr->descs) {
  struct ib_device *device = mr->ibmr.device;
  int size = mr->max_descs * mr->desc_size;

  dma_unmap_single(device->dma_device, mr->desc_map,
     size, DMA_TO_DEVICE);
  kfree(mr->descs_alloc);
  mr->descs = ((void*)0);
 }
}
