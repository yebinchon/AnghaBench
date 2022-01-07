
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_icm_chunk {int npages; TYPE_3__* mem; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int lowmem_page_address (int ) ;
 int sg_dma_address (TYPE_3__*) ;
 int sg_page (TYPE_3__*) ;

__attribute__((used)) static void mlx4_free_icm_coherent(struct mlx4_dev *dev, struct mlx4_icm_chunk *chunk)
{
 int i;

 for (i = 0; i < chunk->npages; ++i)
  dma_free_coherent(&dev->persist->pdev->dev,
      chunk->mem[i].length,
      lowmem_page_address(sg_page(&chunk->mem[i])),
      sg_dma_address(&chunk->mem[i]));
}
