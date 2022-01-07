
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_channel_param {int sq; } ;
struct mlx5e_channel {int * sq; TYPE_1__* priv; } ;
struct TYPE_2__ {int num_tc; } ;


 int mlx5e_close_sq_wait (int *) ;
 int mlx5e_open_sq (struct mlx5e_channel*,int,int *,int *) ;

__attribute__((used)) static int
mlx5e_open_sqs(struct mlx5e_channel *c,
    struct mlx5e_channel_param *cparam)
{
 int err;
 int tc;

 for (tc = 0; tc < c->priv->num_tc; tc++) {
  err = mlx5e_open_sq(c, tc, &cparam->sq, &c->sq[tc]);
  if (err)
   goto err_close_sqs;
 }

 return (0);

err_close_sqs:
 for (tc--; tc >= 0; tc--)
  mlx5e_close_sq_wait(&c->sq[tc]);

 return (err);
}
