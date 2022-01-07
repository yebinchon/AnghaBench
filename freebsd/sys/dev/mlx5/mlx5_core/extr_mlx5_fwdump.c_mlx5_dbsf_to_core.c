
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mlx5_tool_addr {int func; int slot; int bus; int domain; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int * device_t ;
struct TYPE_2__ {scalar_t__ bsdclass; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ device_get_devclass (int *) ;
 struct pci_dev* device_get_softc (int *) ;
 TYPE_1__ mlx5_core_driver ;
 int * pci_find_dbsf (int ,int ,int ,int ) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int
mlx5_dbsf_to_core(const struct mlx5_tool_addr *devaddr,
    struct mlx5_core_dev **mdev)
{
 device_t dev;
 struct pci_dev *pdev;

 dev = pci_find_dbsf(devaddr->domain, devaddr->bus, devaddr->slot,
     devaddr->func);
 if (dev == ((void*)0))
  return (ENOENT);
 if (device_get_devclass(dev) != mlx5_core_driver.bsdclass)
  return (EINVAL);
 pdev = device_get_softc(dev);
 *mdev = pci_get_drvdata(pdev);
 if (*mdev == ((void*)0))
  return (ENOENT);
 return (0);
}
