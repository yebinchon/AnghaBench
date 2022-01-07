
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_priv {int watchdog_timer; scalar_t__ port_up; int watchdog_task; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int workqueue; } ;


 int DRV ;
 int MLX4_EN_WATCHDOG_TIMEOUT ;
 int callout_reset (int *,int ,void (*) (void*),struct mlx4_en_priv*) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx4_en_watchdog_timeout(void *arg)
{
        struct mlx4_en_priv *priv = arg;
        struct mlx4_en_dev *mdev = priv->mdev;

        en_dbg(DRV, priv, "Scheduling watchdog\n");
        queue_work(mdev->workqueue, &priv->watchdog_task);
        if (priv->port_up)
                callout_reset(&priv->watchdog_timer, MLX4_EN_WATCHDOG_TIMEOUT,
                                mlx4_en_watchdog_timeout, priv);
}
