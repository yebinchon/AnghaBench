
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;

__attribute__((used)) static int request_bar(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 int err = 0;

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  mlx5_core_err(dev, "Missing registers BAR, aborting\n");
  return -ENODEV;
 }

 err = pci_request_regions(pdev, DRIVER_NAME);
 if (err)
  mlx5_core_err(dev, "Couldn't get PCI resources, aborting\n");

 return err;
}
