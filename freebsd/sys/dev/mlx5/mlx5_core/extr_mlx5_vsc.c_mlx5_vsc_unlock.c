
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef int device_t ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 scalar_t__ MLX5_VSC_SEMA_OFFSET ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

void mlx5_vsc_unlock(struct mlx5_core_dev *mdev)
{
 device_t dev = mdev->pdev->dev.bsddev;
 int vsc_addr = mdev->vsc_addr;

 if (!vsc_addr) {
  mlx5_core_warn(mdev, "Unable to release vsc lock, vsc_addr not initialized\n");
  return;
 }

 pci_write_config(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, 0, 4);
}
