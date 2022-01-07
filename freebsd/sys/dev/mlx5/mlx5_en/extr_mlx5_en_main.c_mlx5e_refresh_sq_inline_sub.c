
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {int num_tc; } ;
struct mlx5e_channel {TYPE_1__* sq; } ;
struct TYPE_2__ {int lock; } ;


 int mlx5e_update_sq_inline (TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mlx5e_refresh_sq_inline_sub(struct mlx5e_priv *priv, struct mlx5e_channel *c)
{
 int i;

 for (i = 0; i != priv->num_tc; i++) {
  mtx_lock(&c->sq[i].lock);
  mlx5e_update_sq_inline(&c->sq[i]);
  mtx_unlock(&c->sq[i].lock);
 }
}
