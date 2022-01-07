
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int rqn; struct mlx5e_channel* channel; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_channel {struct mlx5e_priv* priv; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_destroy_rq (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static void
mlx5e_disable_rq(struct mlx5e_rq *rq)
{
 struct mlx5e_channel *c = rq->channel;
 struct mlx5e_priv *priv = c->priv;
 struct mlx5_core_dev *mdev = priv->mdev;

 mlx5_core_destroy_rq(mdev, rq->rqn);
}
