
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef int device_t ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EINVAL ;
 scalar_t__ MLX5_VSC_ADDR_OFFSET ;
 scalar_t__ MLX5_VSC_DATA_OFFSET ;
 int MLX5_VSC_SET (int,int *,int ,int ) ;
 int address ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_vsc_wait_on_flag (struct mlx5_core_dev*,int) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

int mlx5_vsc_read(struct mlx5_core_dev *mdev, u32 addr, u32 *data)
{
 device_t dev = mdev->pdev->dev.bsddev;
 int vsc_addr = mdev->vsc_addr;
 int err;
 u32 in;

 if (!vsc_addr) {
  mlx5_core_warn(mdev, "Unable to call vsc read, vsc_addr not initialized\n");
  return EINVAL;
 }

 MLX5_VSC_SET(vsc_addr, &in, address, addr);
 pci_write_config(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, in, 4);

 err = mlx5_vsc_wait_on_flag(mdev, 1);
 if (err) {
  mlx5_core_warn(mdev, "Failed waiting for read complete flag!\n");
  return err;
 }

 *data = pci_read_config(dev, vsc_addr + MLX5_VSC_DATA_OFFSET, 4);

 return 0;
}
