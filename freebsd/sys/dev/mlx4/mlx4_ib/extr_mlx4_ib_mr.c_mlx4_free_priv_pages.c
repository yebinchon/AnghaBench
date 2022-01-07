
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ib_device* device; } ;
struct mlx4_ib_mr {int * pages; int page_map_size; int page_map; TYPE_1__ ibmr; } ;
struct ib_device {int dma_device; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void
mlx4_free_priv_pages(struct mlx4_ib_mr *mr)
{
 if (mr->pages) {
  struct ib_device *device = mr->ibmr.device;

  dma_unmap_single(device->dma_device, mr->page_map,
     mr->page_map_size, DMA_TO_DEVICE);
  free_page((unsigned long)mr->pages);
  mr->pages = ((void*)0);
 }
}
