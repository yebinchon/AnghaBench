
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_channels; } ;
struct mlx5e_priv {int * channel; TYPE_1__ params; } ;


 int mlx5e_close_channel (int *) ;
 int mlx5e_close_channel_wait (int *) ;

__attribute__((used)) static void
mlx5e_close_channels(struct mlx5e_priv *priv)
{
 int i;

 for (i = 0; i < priv->params.num_channels; i++)
  mlx5e_close_channel(&priv->channel[i]);
 for (i = 0; i < priv->params.num_channels; i++)
  mlx5e_close_channel_wait(&priv->channel[i]);
}
