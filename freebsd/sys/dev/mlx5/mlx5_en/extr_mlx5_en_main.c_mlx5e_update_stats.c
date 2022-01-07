
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int watchdog; int update_stats_work; int wq; } ;


 int callout_reset (int *,int ,void (*) (void*),struct mlx5e_priv*) ;
 int hz ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
mlx5e_update_stats(void *arg)
{
 struct mlx5e_priv *priv = arg;

 queue_work(priv->wq, &priv->update_stats_work);

 callout_reset(&priv->watchdog, hz, &mlx5e_update_stats, priv);
}
