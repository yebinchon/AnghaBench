
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_uar {int index; int pfn; } ;
struct TYPE_2__ {int alloc; } ;
struct mthca_dev {int pdev; TYPE_1__ uar_table; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int mthca_alloc (int *) ;
 int pci_resource_start (int ,int) ;

int mthca_uar_alloc(struct mthca_dev *dev, struct mthca_uar *uar)
{
 uar->index = mthca_alloc(&dev->uar_table.alloc);
 if (uar->index == -1)
  return -ENOMEM;

 uar->pfn = (pci_resource_start(dev->pdev, 2) >> PAGE_SHIFT) + uar->index;

 return 0;
}
