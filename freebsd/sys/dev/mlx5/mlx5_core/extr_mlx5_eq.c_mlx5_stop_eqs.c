
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_eq_table {int cmd_eq; int async_eq; int pages_eq; } ;
struct TYPE_2__ {struct mlx5_eq_table eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_cmd_use_events (struct mlx5_core_dev*) ;
 int mlx5_cmd_use_polling (struct mlx5_core_dev*) ;
 int mlx5_destroy_unmap_eq (struct mlx5_core_dev*,int *) ;

int mlx5_stop_eqs(struct mlx5_core_dev *dev)
{
 struct mlx5_eq_table *table = &dev->priv.eq_table;
 int err;

 err = mlx5_destroy_unmap_eq(dev, &table->pages_eq);
 if (err)
  return err;

 mlx5_destroy_unmap_eq(dev, &table->async_eq);
 mlx5_cmd_use_polling(dev);

 err = mlx5_destroy_unmap_eq(dev, &table->cmd_eq);
 if (err)
  mlx5_cmd_use_events(dev);

 return err;
}
