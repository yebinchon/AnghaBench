
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_uar {int index; int bf_map; int map; } ;
struct TYPE_2__ {scalar_t__ bf_mapping; } ;
struct mlx5_core_dev {TYPE_1__ priv; int pdev; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int io_mapping_map_wc (scalar_t__,int,int ) ;
 int ioremap (int,int ) ;
 int mlx5_cmd_alloc_uar (struct mlx5_core_dev*,int*) ;
 int mlx5_cmd_free_uar (struct mlx5_core_dev*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int pci_resource_start (int ,int ) ;

int mlx5_alloc_map_uar(struct mlx5_core_dev *mdev, struct mlx5_uar *uar)
{
 phys_addr_t pfn;
 phys_addr_t uar_bar_start;
 int err;

 err = mlx5_cmd_alloc_uar(mdev, &uar->index);
 if (err) {
  mlx5_core_warn(mdev, "mlx5_cmd_alloc_uar() failed, %d\n", err);
  return err;
 }

 uar_bar_start = pci_resource_start(mdev->pdev, 0);
 pfn = (uar_bar_start >> PAGE_SHIFT) + uar->index;
 uar->map = ioremap(pfn << PAGE_SHIFT, PAGE_SIZE);
 if (!uar->map) {
  mlx5_core_warn(mdev, "ioremap() failed, %d\n", err);
  err = -ENOMEM;
  goto err_free_uar;
 }

 if (mdev->priv.bf_mapping)
  uar->bf_map = io_mapping_map_wc(mdev->priv.bf_mapping,
      uar->index << PAGE_SHIFT,
      PAGE_SIZE);

 return 0;

err_free_uar:
 mlx5_cmd_free_uar(mdev, uar->index);

 return err;
}
