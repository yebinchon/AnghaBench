
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int netdev_lock; struct net_device* netdev; } ;
struct mlx5_ib_dev {TYPE_1__ roce; } ;
struct ib_device {int dummy; } ;


 int dev_hold (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct net_device *mlx5_ib_get_netdev(struct ib_device *device,
          u8 port_num)
{
 struct mlx5_ib_dev *ibdev = to_mdev(device);
 struct net_device *ndev;



 read_lock(&ibdev->roce.netdev_lock);
 ndev = ibdev->roce.netdev;
 if (ndev)
  dev_hold(ndev);
 read_unlock(&ibdev->roce.netdev_lock);

 return ndev;
}
