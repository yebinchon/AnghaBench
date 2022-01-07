
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* eq; } ;
struct mlx4_priv {TYPE_3__ eq_table; } ;
struct TYPE_8__ {int num_comp_vectors; int num_ports; } ;
struct mlx4_dev {TYPE_4__ caps; } ;
struct TYPE_5__ {int ports; } ;
struct TYPE_6__ {TYPE_1__ actv_ports; } ;


 int EINVAL ;
 int MLX4_CQ_TO_EQ_VECTOR (int) ;
 int bitmap_weight (int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_is_eq_shared(struct mlx4_dev *dev, int vector)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 vector = MLX4_CQ_TO_EQ_VECTOR(vector);
 if (vector <= 0 || (vector >= dev->caps.num_comp_vectors + 1))
  return -EINVAL;

 return !!(bitmap_weight(priv->eq_table.eq[vector].actv_ports.ports,
    dev->caps.num_ports) > 1);
}
