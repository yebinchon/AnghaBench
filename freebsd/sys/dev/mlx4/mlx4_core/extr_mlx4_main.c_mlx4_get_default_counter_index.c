
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_priv {int* def_counter; } ;
struct mlx4_dev {int dummy; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_get_default_counter_index(struct mlx4_dev *dev, int port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 return priv->def_counter[port - 1];
}
