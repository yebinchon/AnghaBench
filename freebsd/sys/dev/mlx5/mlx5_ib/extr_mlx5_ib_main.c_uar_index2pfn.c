
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_1__* mdev; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int pdev; } ;


 int PAGE_SHIFT ;
 int pci_resource_start (int ,int ) ;

__attribute__((used)) static phys_addr_t uar_index2pfn(struct mlx5_ib_dev *dev, int index)
{
 return (pci_resource_start(dev->mdev->pdev, 0) >> PAGE_SHIFT) + index;
}
