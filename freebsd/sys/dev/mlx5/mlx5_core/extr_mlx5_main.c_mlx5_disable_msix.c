
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_priv {int msix_arr; } ;
struct mlx5_core_dev {int pdev; struct mlx5_priv priv; } ;


 int kfree (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void mlx5_disable_msix(struct mlx5_core_dev *dev)
{
 struct mlx5_priv *priv = &dev->priv;

 pci_disable_msix(dev->pdev);
 kfree(priv->msix_arr);
}
