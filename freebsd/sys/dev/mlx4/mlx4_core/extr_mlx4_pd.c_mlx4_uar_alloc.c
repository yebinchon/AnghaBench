
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_uar {int index; int pfn; int * map; } ;
struct TYPE_5__ {int uar_page_size; } ;
struct mlx4_dev {TYPE_2__* persist; TYPE_1__ caps; } ;
struct TYPE_7__ {int bitmap; } ;
struct TYPE_8__ {TYPE_3__ uar_table; } ;
struct TYPE_6__ {int pdev; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int mlx4_bitmap_alloc (int *) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 TYPE_4__* mlx4_priv (struct mlx4_dev*) ;
 scalar_t__ pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;

int mlx4_uar_alloc(struct mlx4_dev *dev, struct mlx4_uar *uar)
{
 int offset;

 uar->index = mlx4_bitmap_alloc(&mlx4_priv(dev)->uar_table.bitmap);
 if (uar->index == -1)
  return -ENOMEM;

 if (mlx4_is_slave(dev))
  offset = uar->index % ((int)pci_resource_len(dev->persist->pdev,
            2) /
           dev->caps.uar_page_size);
 else
  offset = uar->index;
 uar->pfn = (pci_resource_start(dev->persist->pdev, 2) >> PAGE_SHIFT)
      + offset;
 uar->map = ((void*)0);
 return 0;
}
