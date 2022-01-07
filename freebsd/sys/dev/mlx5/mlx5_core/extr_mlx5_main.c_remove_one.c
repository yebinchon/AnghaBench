
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_priv {int dummy; } ;
struct mlx5_core_dev {int sysctl_ctx; int dump_lock; struct mlx5_priv priv; } ;


 int kfree (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_fwdump_clean (struct mlx5_core_dev*) ;
 int mlx5_health_cleanup (struct mlx5_core_dev*) ;
 int mlx5_pagealloc_cleanup (struct mlx5_core_dev*) ;
 int mlx5_pci_close (struct mlx5_core_dev*,struct mlx5_priv*) ;
 scalar_t__ mlx5_unload_one (struct mlx5_core_dev*,struct mlx5_priv*,int) ;
 int mtx_destroy (int *) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void remove_one(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);
 struct mlx5_priv *priv = &dev->priv;

 if (mlx5_unload_one(dev, priv, 1)) {
  mlx5_core_err(dev, "mlx5_unload_one failed\n");
  mlx5_health_cleanup(dev);
  return;
 }

 mlx5_pagealloc_cleanup(dev);
 mlx5_health_cleanup(dev);
 mlx5_fwdump_clean(dev);
 mlx5_pci_close(dev, priv);
 mtx_destroy(&dev->dump_lock);
 pci_set_drvdata(pdev, ((void*)0));
 sysctl_ctx_free(&dev->sysctl_ctx);
 kfree(dev);
}
