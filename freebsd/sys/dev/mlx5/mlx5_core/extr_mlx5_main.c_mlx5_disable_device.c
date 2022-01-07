
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 int mlx5_pci_err_detected (int ,int ) ;

void mlx5_disable_device(struct mlx5_core_dev *dev)
{
 mlx5_pci_err_detected(dev->pdev, 0);
}
