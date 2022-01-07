
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_channels; } ;
struct mlx5e_priv {TYPE_2__* channel; TYPE_1__ params; } ;
struct mlx5e_channel_param {int dummy; } ;
struct TYPE_6__ {int rq; } ;


 int M_MLX5EN ;
 int M_WAITOK ;
 int free (struct mlx5e_channel_param*,int ) ;
 struct mlx5e_channel_param* malloc (int,int ,int ) ;
 int mlx5e_build_channel_param (struct mlx5e_priv*,struct mlx5e_channel_param*) ;
 int mlx5e_close_channel (TYPE_2__*) ;
 int mlx5e_close_channel_wait (TYPE_2__*) ;
 int mlx5e_open_channel (struct mlx5e_priv*,struct mlx5e_channel_param*,TYPE_2__*) ;
 int mlx5e_wait_for_min_rx_wqes (int *) ;

__attribute__((used)) static int
mlx5e_open_channels(struct mlx5e_priv *priv)
{
 struct mlx5e_channel_param *cparam;
 int err;
 int i;
 int j;

 cparam = malloc(sizeof(*cparam), M_MLX5EN, M_WAITOK);

 mlx5e_build_channel_param(priv, cparam);
 for (i = 0; i < priv->params.num_channels; i++) {
  err = mlx5e_open_channel(priv, cparam, &priv->channel[i]);
  if (err)
   goto err_close_channels;
 }

 for (j = 0; j < priv->params.num_channels; j++) {
  err = mlx5e_wait_for_min_rx_wqes(&priv->channel[j].rq);
  if (err)
   goto err_close_channels;
 }
 free(cparam, M_MLX5EN);
 return (0);

err_close_channels:
 while (i--) {
  mlx5e_close_channel(&priv->channel[i]);
  mlx5e_close_channel_wait(&priv->channel[i]);
 }
 free(cparam, M_MLX5EN);
 return (err);
}
