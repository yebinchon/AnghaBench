
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bf_mapping; } ;
struct mlx5_core_dev {TYPE_1__ priv; int pdev; } ;
typedef int resource_size_t ;


 int ENOMEM ;
 int io_mapping_create_wc (int ,int ) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

__attribute__((used)) static int map_bf_area(struct mlx5_core_dev *dev)
{
 resource_size_t bf_start = pci_resource_start(dev->pdev, 0);
 resource_size_t bf_len = pci_resource_len(dev->pdev, 0);

 dev->priv.bf_mapping = io_mapping_create_wc(bf_start, bf_len);

 return dev->priv.bf_mapping ? 0 : -ENOMEM;
}
