
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct net_device {int dummy; } ;
struct mlx4_ib_qp {int port; } ;
struct TYPE_2__ {int lock; struct net_device** netdevs; } ;
struct mlx4_ib_dev {TYPE_1__ iboe; } ;


 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mlx4_ib_add_mc(struct mlx4_ib_dev *mdev, struct mlx4_ib_qp *mqp,
     union ib_gid *gid)
{
 struct net_device *ndev;
 int ret = 0;

 if (!mqp->port)
  return 0;

 spin_lock_bh(&mdev->iboe.lock);
 ndev = mdev->iboe.netdevs[mqp->port - 1];
 if (ndev)
  dev_hold(ndev);
 spin_unlock_bh(&mdev->iboe.lock);

 if (ndev) {
  ret = 1;
  dev_put(ndev);
 }

 return ret;
}
