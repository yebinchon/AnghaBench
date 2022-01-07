
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx4_dev_persistent {int interface_state; int interface_state_mutex; int dev; } ;


 int MLX4_INTERFACE_STATE_UP ;
 int mlx4_info (int ,char*) ;
 int mlx4_unload_one (struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_dev_persistent* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void mlx4_shutdown(struct pci_dev *pdev)
{
 struct mlx4_dev_persistent *persist = pci_get_drvdata(pdev);

 mlx4_info(persist->dev, "mlx4_shutdown was called\n");
 mutex_lock(&persist->interface_state_mutex);
 if (persist->interface_state & MLX4_INTERFACE_STATE_UP)
  mlx4_unload_one(pdev);
 mutex_unlock(&persist->interface_state_mutex);
}
