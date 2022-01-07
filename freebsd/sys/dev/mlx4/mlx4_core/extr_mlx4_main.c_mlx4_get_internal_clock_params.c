
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clock_offset; int clock_bar; } ;
struct mlx4_priv {TYPE_1__ fw; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_clock_params {int size; int offset; int bar; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int MLX4_CLOCK_SIZE ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

int mlx4_get_internal_clock_params(struct mlx4_dev *dev,
       struct mlx4_clock_params *params)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (mlx4_is_slave(dev))
  return -ENOTSUPP;

 if (!params)
  return -EINVAL;

 params->bar = priv->fw.clock_bar;
 params->offset = priv->fw.clock_offset;
 params->size = MLX4_CLOCK_SIZE;

 return 0;
}
