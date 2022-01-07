
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int rqn; struct mlx5e_channel* channel; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_channel {struct mlx5e_priv* priv; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int ctx ;
 int kvfree (void*) ;
 int mlx5_core_modify_rq (struct mlx5_core_dev*,void*,int) ;
 void* mlx5_vzalloc (int) ;
 void* modify_rq_in ;
 int rq_state ;
 int rqn ;
 int state ;

__attribute__((used)) static int
mlx5e_modify_rq(struct mlx5e_rq *rq, int curr_state, int next_state)
{
 struct mlx5e_channel *c = rq->channel;
 struct mlx5e_priv *priv = c->priv;
 struct mlx5_core_dev *mdev = priv->mdev;

 void *in;
 void *rqc;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(modify_rq_in);
 in = mlx5_vzalloc(inlen);
 if (in == ((void*)0))
  return (-ENOMEM);

 rqc = MLX5_ADDR_OF(modify_rq_in, in, ctx);

 MLX5_SET(modify_rq_in, in, rqn, rq->rqn);
 MLX5_SET(modify_rq_in, in, rq_state, curr_state);
 MLX5_SET(rqc, rqc, state, next_state);

 err = mlx5_core_modify_rq(mdev, in, inlen);

 kvfree(in);

 return (err);
}
