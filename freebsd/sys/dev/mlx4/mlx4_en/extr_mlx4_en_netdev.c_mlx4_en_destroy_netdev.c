
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {size_t port; int gone; struct mlx4_en_priv* tx_cq; struct mlx4_en_priv* tx_ring; int conf_ctx; int * conf_sysctl; int watchdog_timer; int service_task; int stats_task; int res; scalar_t__ allocated; scalar_t__ registered; int * vlan_detach; int * vlan_attach; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int ** pndev; int workqueue; int dev; } ;


 int DRV ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int MLX4_EN_PAGE_SIZE ;
 int callout_drain (int *) ;
 int cancel_delayed_work (int *) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,size_t) ;
 int ether_ifdetach (struct net_device*) ;
 int flush_workqueue (int ) ;
 int hz ;
 int if_free (struct net_device*) ;
 int kfree (struct mlx4_en_priv*) ;
 int mlx4_en_free_resources (struct mlx4_en_priv*) ;
 int mlx4_en_stop_port (struct net_device*) ;
 int mlx4_free_hwq_res (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int pause (char*,int ) ;
 int sysctl_ctx_free (int *) ;
 int vlan_config ;
 int vlan_unconfig ;

void mlx4_en_destroy_netdev(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;

 en_dbg(DRV, priv, "Destroying netdev on port:%d\n", priv->port);


 priv->gone = 1;


 pause("W", hz);

 if (priv->vlan_attach != ((void*)0))
  EVENTHANDLER_DEREGISTER(vlan_config, priv->vlan_attach);
 if (priv->vlan_detach != ((void*)0))
  EVENTHANDLER_DEREGISTER(vlan_unconfig, priv->vlan_detach);

 mutex_lock(&mdev->state_lock);
 mlx4_en_stop_port(dev);
 mutex_unlock(&mdev->state_lock);


 if (priv->registered)
  ether_ifdetach(dev);

 if (priv->allocated)
  mlx4_free_hwq_res(mdev->dev, &priv->res, MLX4_EN_PAGE_SIZE);

 cancel_delayed_work(&priv->stats_task);
 cancel_delayed_work(&priv->service_task);

 flush_workqueue(mdev->workqueue);
        callout_drain(&priv->watchdog_timer);


 mutex_lock(&mdev->state_lock);
 mdev->pndev[priv->port] = ((void*)0);
 mutex_unlock(&mdev->state_lock);


 mlx4_en_free_resources(priv);


 if (priv->conf_sysctl != ((void*)0))
  sysctl_ctx_free(&priv->conf_ctx);

 kfree(priv->tx_ring);
 kfree(priv->tx_cq);

        kfree(priv);
        if_free(dev);

}
