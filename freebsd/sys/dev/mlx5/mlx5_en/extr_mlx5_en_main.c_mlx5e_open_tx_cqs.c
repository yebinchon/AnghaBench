
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_channel_param {int tx_cq; } ;
struct mlx5e_channel {TYPE_1__* sq; int ix; TYPE_2__* priv; } ;
struct TYPE_4__ {int num_tc; } ;
struct TYPE_3__ {int cq; } ;


 int mlx5e_close_cq (int *) ;
 int mlx5e_open_cq (TYPE_2__*,int *,int *,int *,int ) ;
 int mlx5e_tx_cq_comp ;

__attribute__((used)) static int
mlx5e_open_tx_cqs(struct mlx5e_channel *c,
    struct mlx5e_channel_param *cparam)
{
 int err;
 int tc;

 for (tc = 0; tc < c->priv->num_tc; tc++) {

  err = mlx5e_open_cq(c->priv, &cparam->tx_cq, &c->sq[tc].cq,
      &mlx5e_tx_cq_comp, c->ix);
  if (err)
   goto err_close_tx_cqs;
 }
 return (0);

err_close_tx_cqs:
 for (tc--; tc >= 0; tc--)
  mlx5e_close_cq(&c->sq[tc].cq);

 return (err);
}
