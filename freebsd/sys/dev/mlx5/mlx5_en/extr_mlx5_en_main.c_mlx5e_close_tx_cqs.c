
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_channel {TYPE_2__* sq; TYPE_1__* priv; } ;
struct TYPE_4__ {int cq; } ;
struct TYPE_3__ {int num_tc; } ;


 int mlx5e_close_cq (int *) ;

__attribute__((used)) static void
mlx5e_close_tx_cqs(struct mlx5e_channel *c)
{
 int tc;

 for (tc = 0; tc < c->priv->num_tc; tc++)
  mlx5e_close_cq(&c->sq[tc].cq);
}
