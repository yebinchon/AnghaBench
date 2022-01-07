
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int num_channels; } ;
struct mlx5e_priv {int * channel; TYPE_1__ params; int state; } ;


 int MLX5E_STATE_OPENED ;
 int mlx5e_disable_rx_dma (int *) ;
 int mlx5e_enable_rx_dma (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
mlx5e_modify_rx_dma(struct mlx5e_priv *priv, uint8_t value)
{
 int i;

 if (test_bit(MLX5E_STATE_OPENED, &priv->state) == 0)
  return;

 for (i = 0; i < priv->params.num_channels; i++) {
  if (value)
   mlx5e_disable_rx_dma(&priv->channel[i]);
  else
   mlx5e_enable_rx_dma(&priv->channel[i]);
 }
}
