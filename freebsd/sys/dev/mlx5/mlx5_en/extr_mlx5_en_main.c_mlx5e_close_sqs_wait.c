
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_channel {int * sq; TYPE_1__* priv; } ;
struct TYPE_2__ {int num_tc; } ;


 int mlx5e_close_sq_wait (int *) ;

__attribute__((used)) static void
mlx5e_close_sqs_wait(struct mlx5e_channel *c)
{
 int tc;

 for (tc = 0; tc < c->priv->num_tc; tc++)
  mlx5e_close_sq_wait(&c->sq[tc]);
}
