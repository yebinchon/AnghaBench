
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_priv {int dummy; } ;
struct mlx5_core_dev {struct mlx5_priv priv; } ;


 int mlx5_cmd_use_polling (struct mlx5_core_dev*) ;
 int mlx5_disable_interrupts (struct mlx5_core_dev*) ;
 int mlx5_pci_disable_device (struct mlx5_core_dev*) ;
 int mlx5_try_fast_unload (struct mlx5_core_dev*) ;
 int mlx5_unload_one (struct mlx5_core_dev*,struct mlx5_priv*,int) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void shutdown_one(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 struct mlx5_priv *priv = &dev->priv;
 int err;


 mlx5_cmd_use_polling(dev);


 mlx5_disable_interrupts(dev);

 err = mlx5_try_fast_unload(dev);
 if (err)
         mlx5_unload_one(dev, priv, 0);
 mlx5_pci_disable_device(dev);
}
