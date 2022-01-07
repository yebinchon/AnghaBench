
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int num_tc; } ;
struct mlx5e_channel {int * sq; int rq; } ;


 int mlx5e_refresh_rq_params (struct mlx5e_priv*,int *) ;
 int mlx5e_refresh_sq_params (struct mlx5e_priv*,int *) ;

__attribute__((used)) static int
mlx5e_refresh_channel_params_sub(struct mlx5e_priv *priv, struct mlx5e_channel *c)
{
 int err;
 int i;

 err = mlx5e_refresh_rq_params(priv, &c->rq);
 if (err)
  goto done;

 for (i = 0; i != priv->num_tc; i++) {
  err = mlx5e_refresh_sq_params(priv, &c->sq[i]);
  if (err)
   goto done;
 }
done:
 return (err);
}
