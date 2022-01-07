
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_icm_chunk {scalar_t__ nsg; int npages; TYPE_2__* mem; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int pdev; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int __free_pages (int ,int ) ;
 int get_order (int ) ;
 int pci_unmap_sg (int ,TYPE_2__*,int,int ) ;
 int sg_page (TYPE_2__*) ;

__attribute__((used)) static void mlx4_free_icm_pages(struct mlx4_dev *dev, struct mlx4_icm_chunk *chunk)
{
 int i;

 if (chunk->nsg > 0)
  pci_unmap_sg(dev->persist->pdev, chunk->mem, chunk->npages,
        PCI_DMA_BIDIRECTIONAL);

 for (i = 0; i < chunk->npages; ++i)
  __free_pages(sg_page(&chunk->mem[i]),
        get_order(chunk->mem[i].length));
}
