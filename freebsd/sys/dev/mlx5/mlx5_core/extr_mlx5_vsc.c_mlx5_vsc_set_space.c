
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef int device_t ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ MLX5_VSC_GET (int ,int *,int ) ;
 int MLX5_VSC_SET (int ,int *,int ,int ) ;
 scalar_t__ MLX5_VSC_SPACE_OFFSET ;
 scalar_t__ MLX5_VSC_SPACE_SUPPORTED ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;
 int status ;

int mlx5_vsc_set_space(struct mlx5_core_dev *mdev, u16 space)
{
 device_t dev = mdev->pdev->dev.bsddev;
 int vsc_addr = mdev->vsc_addr;
 u32 vsc_space = 0;

 if (!vsc_addr) {
  mlx5_core_warn(mdev, "Unable to set vsc space, vsc_addr not initialized\n");
  return EINVAL;
 }

 MLX5_VSC_SET(vsc_space, &vsc_space, space, space);
 pci_write_config(dev, vsc_addr + MLX5_VSC_SPACE_OFFSET, vsc_space, 4);
 vsc_space = pci_read_config(dev, vsc_addr + MLX5_VSC_SPACE_OFFSET, 4);

 if (MLX5_VSC_GET(vsc_space, &vsc_space, status) != MLX5_VSC_SPACE_SUPPORTED) {
  mlx5_core_warn(mdev, "Space 0x%x is not supported.\n", space);
  return ENOTSUP;
 }

 return 0;
}
