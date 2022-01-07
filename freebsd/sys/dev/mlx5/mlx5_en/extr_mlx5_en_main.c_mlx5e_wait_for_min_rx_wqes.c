
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_wq_ll {scalar_t__ cur_sz; } ;
struct mlx5e_rq {struct mlx5_wq_ll wq; struct mlx5e_channel* channel; } ;
struct TYPE_2__ {scalar_t__ min_rx_wqes; } ;
struct mlx5e_priv {TYPE_1__ params; } ;
struct mlx5e_channel {struct mlx5e_priv* priv; } ;


 int ETIMEDOUT ;
 int msleep (int) ;

__attribute__((used)) static int
mlx5e_wait_for_min_rx_wqes(struct mlx5e_rq *rq)
{
 struct mlx5e_channel *c = rq->channel;
 struct mlx5e_priv *priv = c->priv;
 struct mlx5_wq_ll *wq = &rq->wq;
 int i;

 for (i = 0; i < 1000; i++) {
  if (wq->cur_sz >= priv->params.min_rx_wqes)
   return (0);

  msleep(4);
 }
 return (-ETIMEDOUT);
}
