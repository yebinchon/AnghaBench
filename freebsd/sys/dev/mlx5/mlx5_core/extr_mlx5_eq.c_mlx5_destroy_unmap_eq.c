
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_eq {size_t irqn; int buf; int eqn; } ;
struct TYPE_4__ {TYPE_1__* msix_arr; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_3__ {int vector; } ;


 int free_irq (int ,struct mlx5_eq*) ;
 int mlx5_buf_free (struct mlx5_core_dev*,int *) ;
 int mlx5_cmd_destroy_eq (struct mlx5_core_dev*,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;

int mlx5_destroy_unmap_eq(struct mlx5_core_dev *dev, struct mlx5_eq *eq)
{
 int err;

 free_irq(dev->priv.msix_arr[eq->irqn].vector, eq);
 err = mlx5_cmd_destroy_eq(dev, eq->eqn);
 if (err)
  mlx5_core_warn(dev, "failed to destroy a previously created eq: eqn %d\n",
          eq->eqn);
 mlx5_buf_free(dev, &eq->buf);

 return err;
}
