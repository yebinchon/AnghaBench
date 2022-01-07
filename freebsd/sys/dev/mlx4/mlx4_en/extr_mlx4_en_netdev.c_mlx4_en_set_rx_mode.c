
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {int rx_mode_task; TYPE_1__* mdev; int port_up; } ;
struct TYPE_2__ {int workqueue; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx4_en_set_rx_mode(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 if (!priv->port_up)
  return;

 queue_work(priv->mdev->workqueue, &priv->rx_mode_task);
}
