
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int icm_page; int icm_dma; int icm_virt; } ;
struct mthca_dev {TYPE_1__ eq_table; int pdev; } ;


 int ENOMEM ;
 int GFP_HIGHUSER ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (int ) ;
 int alloc_page (int ) ;
 int mthca_MAP_ICM_page (struct mthca_dev*,int ,int ) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_page (int ,int ,int ,int ,int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;

int mthca_map_eq_icm(struct mthca_dev *dev, u64 icm_virt)
{
 int ret;







 dev->eq_table.icm_virt = icm_virt;
 dev->eq_table.icm_page = alloc_page(GFP_HIGHUSER);
 if (!dev->eq_table.icm_page)
  return -ENOMEM;
 dev->eq_table.icm_dma = pci_map_page(dev->pdev, dev->eq_table.icm_page, 0,
           PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 if (pci_dma_mapping_error(dev->pdev, dev->eq_table.icm_dma)) {
  __free_page(dev->eq_table.icm_page);
  return -ENOMEM;
 }

 ret = mthca_MAP_ICM_page(dev, dev->eq_table.icm_dma, icm_virt);
 if (ret) {
  pci_unmap_page(dev->pdev, dev->eq_table.icm_dma, PAGE_SIZE,
          PCI_DMA_BIDIRECTIONAL);
  __free_page(dev->eq_table.icm_page);
 }

 return ret;
}
