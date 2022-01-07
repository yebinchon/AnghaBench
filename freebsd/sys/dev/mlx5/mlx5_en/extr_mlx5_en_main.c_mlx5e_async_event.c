
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int async_events_mtx; int state; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_dev_event { ____Placeholder_mlx5_dev_event } mlx5_dev_event ;


 int MLX5E_STATE_ASYNC_EVENTS_ENABLE ;
 int mlx5e_async_event_sub (struct mlx5e_priv*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
mlx5e_async_event(struct mlx5_core_dev *mdev, void *vpriv,
    enum mlx5_dev_event event, unsigned long param)
{
 struct mlx5e_priv *priv = vpriv;

 mtx_lock(&priv->async_events_mtx);
 if (test_bit(MLX5E_STATE_ASYNC_EVENTS_ENABLE, &priv->state))
  mlx5e_async_event_sub(priv, event);
 mtx_unlock(&priv->async_events_mtx);
}
