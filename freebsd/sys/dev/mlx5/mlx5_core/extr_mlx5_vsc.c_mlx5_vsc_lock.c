
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef int device_t ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DELAY (int) ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ MLX5_VSC_COUNTER_OFFSET ;
 int MLX5_VSC_MAX_RETRIES ;
 scalar_t__ MLX5_VSC_SEMA_OFFSET ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 scalar_t__ pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,scalar_t__,int) ;
 int random () ;

int mlx5_vsc_lock(struct mlx5_core_dev *mdev)
{
 device_t dev = mdev->pdev->dev.bsddev;
 int vsc_addr = mdev->vsc_addr;
 int retries = 0;
 u32 lock_val;
 u32 counter;

 if (!vsc_addr) {
  mlx5_core_warn(mdev, "Unable to acquire vsc lock, vsc_addr not initialized\n");
  return EINVAL;
 }

 while (1) {
  if (retries > MLX5_VSC_MAX_RETRIES)
   return EBUSY;

  if (pci_read_config(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, 4)) {
   retries++;




   DELAY((random() % 9000) + 1000);
   continue;
  }

  counter = pci_read_config(dev, vsc_addr + MLX5_VSC_COUNTER_OFFSET, 4);
  pci_write_config(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, counter, 4);
  lock_val = pci_read_config(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, 4);

  if (lock_val == counter)
   break;

  retries++;
 }

 return 0;
}
