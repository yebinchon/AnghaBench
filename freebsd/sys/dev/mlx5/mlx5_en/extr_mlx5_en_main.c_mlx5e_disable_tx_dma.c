
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_channel {int * sq; TYPE_1__* priv; } ;
struct TYPE_2__ {int num_tc; } ;


 int mlx5e_drain_sq (int *) ;

__attribute__((used)) static void
mlx5e_disable_tx_dma(struct mlx5e_channel *ch)
{
 int i;

 for (i = 0; i < ch->priv->num_tc; i++)
  mlx5e_drain_sq(&ch->sq[i]);
}
