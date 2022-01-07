
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int if_mtu; int if_drv_flags; } ;
struct mlx4_en_priv {int max_mtu; int watchdog_task; int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; int workqueue; int device_up; } ;


 int DRV ;
 int EPERM ;
 int IFF_DRV_RUNNING ;
 int MLX4_EN_MIN_MTU ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,...) ;
 int en_err (struct mlx4_en_priv*,char*,int,...) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int mlx4_en_change_mtu(struct net_device *dev, int new_mtu)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int err = 0;

 en_dbg(DRV, priv, "Change MTU called - current:%u new:%u\n",
        (unsigned)dev->if_mtu, (unsigned)new_mtu);

 if ((new_mtu < MLX4_EN_MIN_MTU) || (new_mtu > priv->max_mtu)) {
  en_err(priv, "Bad MTU size:%d, max %u.\n", new_mtu,
      priv->max_mtu);
  return -EPERM;
 }
 mutex_lock(&mdev->state_lock);
 dev->if_mtu = new_mtu;
 if (dev->if_drv_flags & IFF_DRV_RUNNING) {
  if (!mdev->device_up) {


   en_dbg(DRV, priv, "Change MTU called with card down!?\n");
  } else {
   mlx4_en_stop_port(dev);
   err = mlx4_en_start_port(dev);
   if (err) {
    en_err(priv, "Failed restarting port:%d\n",
      priv->port);
    queue_work(mdev->workqueue, &priv->watchdog_task);
   }
  }
 }
 mutex_unlock(&mdev->state_lock);
 return 0;
}
