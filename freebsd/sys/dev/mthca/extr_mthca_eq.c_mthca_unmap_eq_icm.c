
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int icm_page; int icm_dma; int icm_virt; } ;
struct mthca_dev {TYPE_1__ eq_table; int pdev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (int ) ;
 int mthca_UNMAP_ICM (struct mthca_dev*,int ,int) ;
 int pci_unmap_page (int ,int ,int ,int ) ;

void mthca_unmap_eq_icm(struct mthca_dev *dev)
{
 mthca_UNMAP_ICM(dev, dev->eq_table.icm_virt, 1);
 pci_unmap_page(dev->pdev, dev->eq_table.icm_dma, PAGE_SIZE,
         PCI_DMA_BIDIRECTIONAL);
 __free_page(dev->eq_table.icm_page);
}
