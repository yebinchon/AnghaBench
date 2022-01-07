
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pool_lock; } ;
struct TYPE_5__ {TYPE_1__* eq; } ;
struct mlx4_priv {TYPE_3__ msix_ctl; TYPE_2__ eq_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {int ref_count; } ;


 int MLX4_CQ_TO_EQ_VECTOR (int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx4_release_eq(struct mlx4_dev *dev, int vec)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int eq_vec = MLX4_CQ_TO_EQ_VECTOR(vec);

 mutex_lock(&priv->msix_ctl.pool_lock);
 priv->eq_table.eq[eq_vec].ref_count--;




 mutex_unlock(&priv->msix_ctl.pool_lock);
}
