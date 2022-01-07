
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_icm_chunk {scalar_t__ nsg; int npages; TYPE_1__* mem; } ;
struct mthca_dev {int pdev; } ;
struct TYPE_3__ {int length; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int __free_pages (int ,int ) ;
 int get_order (int ) ;
 int pci_unmap_sg (int ,TYPE_1__*,int,int ) ;
 int sg_page (TYPE_1__*) ;

__attribute__((used)) static void mthca_free_icm_pages(struct mthca_dev *dev, struct mthca_icm_chunk *chunk)
{
 int i;

 if (chunk->nsg > 0)
  pci_unmap_sg(dev->pdev, chunk->mem, chunk->npages,
        PCI_DMA_BIDIRECTIONAL);

 for (i = 0; i < chunk->npages; ++i)
  __free_pages(sg_page(&chunk->mem[i]),
        get_order(chunk->mem[i].length));
}
