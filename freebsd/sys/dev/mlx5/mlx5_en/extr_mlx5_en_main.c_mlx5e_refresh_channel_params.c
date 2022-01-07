
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_channels; } ;
struct mlx5e_priv {int * channel; TYPE_1__ params; int state; } ;


 int EINVAL ;
 int MLX5E_STATE_OPENED ;
 int mlx5e_refresh_channel_params_sub (struct mlx5e_priv*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int
mlx5e_refresh_channel_params(struct mlx5e_priv *priv)
{
 int i;


 if (test_bit(MLX5E_STATE_OPENED, &priv->state) == 0)
  return (EINVAL);

 for (i = 0; i < priv->params.num_channels; i++) {
  int err;

  err = mlx5e_refresh_channel_params_sub(priv, &priv->channel[i]);
  if (err)
   return (err);
 }
 return (0);
}
