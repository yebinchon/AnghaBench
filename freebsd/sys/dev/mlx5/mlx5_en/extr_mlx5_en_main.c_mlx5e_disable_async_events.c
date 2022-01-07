
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int async_events_mtx; int state; } ;


 int MLX5E_STATE_ASYNC_EVENTS_ENABLE ;
 int clear_bit (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mlx5e_disable_async_events(struct mlx5e_priv *priv)
{
 mtx_lock(&priv->async_events_mtx);
 clear_bit(MLX5E_STATE_ASYNC_EVENTS_ENABLE, &priv->state);
 mtx_unlock(&priv->async_events_mtx);
}
