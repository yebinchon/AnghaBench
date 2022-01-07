
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {scalar_t__ device; } ;
struct mlx5_core_health {int health_counter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ioread32be (int ) ;
 int mlx5_core_info (struct mlx5_core_dev*,char*,int,...) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int msleep (int) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ pci_read_config_word (struct pci_dev*,int,scalar_t__*) ;

__attribute__((used)) static void wait_vital(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 struct mlx5_core_health *health = &dev->priv.health;
 const int niter = 100;
 u32 count;
 u16 did;
 int i;


 msleep(1000);
 for (i = 0; i < niter; i++) {
  if (pci_read_config_word(pdev, 2, &did)) {
   mlx5_core_warn(dev, "failed reading config word\n");
   break;
  }
  if (did == pdev->device) {
   mlx5_core_info(dev,
       "device ID correctly read after %d iterations\n", i);
   break;
  }
  msleep(50);
 }
 if (i == niter)
  mlx5_core_warn(dev, "could not read device ID\n");

 for (i = 0; i < niter; i++) {
  count = ioread32be(health->health_counter);
  if (count && count != 0xffffffff) {
   mlx5_core_info(dev,
   "Counter value 0x%x after %d iterations\n", count, i);
   break;
  }
  msleep(50);
 }

 if (i == niter)
  mlx5_core_warn(dev, "could not read device ID\n");
}
