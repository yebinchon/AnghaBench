
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 scalar_t__ PCI_ERS_RESULT_RECOVERED ;
 int mlx5_pci_disable_device (struct mlx5_core_dev*) ;
 int mlx5_pci_resume (int ) ;
 scalar_t__ mlx5_pci_slot_reset (int ) ;

void mlx5_recover_device(struct mlx5_core_dev *dev)
{
 mlx5_pci_disable_device(dev);
 if (mlx5_pci_slot_reset(dev->pdev) == PCI_ERS_RESULT_RECOVERED)
  mlx5_pci_resume(dev->pdev);
}
