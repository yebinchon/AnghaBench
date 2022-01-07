
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int PCIY_VENDOR ;
 int pci_find_cap (int ,int ,int*) ;

int mlx5_vsc_find_cap(struct mlx5_core_dev *mdev)
{
 int *capreg = &mdev->vsc_addr;
 int err;

 err = pci_find_cap(mdev->pdev->dev.bsddev, PCIY_VENDOR, capreg);

 if (err)
  *capreg = 0;

 return err;
}
