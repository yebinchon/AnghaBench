
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int state; } ;


 int MLX5E_STATE_ASYNC_EVENTS_ENABLE ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
mlx5e_enable_async_events(struct mlx5e_priv *priv)
{
 set_bit(MLX5E_STATE_ASYNC_EVENTS_ENABLE, &priv->state);
}
