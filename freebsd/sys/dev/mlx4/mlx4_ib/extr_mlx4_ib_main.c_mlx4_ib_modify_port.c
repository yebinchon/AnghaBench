
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct mlx4_ib_dev {int cap_mask_mutex; TYPE_1__* dev; } ;
struct ib_port_modify {int set_port_cap_mask; int clr_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {scalar_t__* port_type; } ;
struct TYPE_3__ {TYPE_2__ caps; } ;


 int IB_PORT_RESET_QKEY_CNTR ;
 scalar_t__ MLX4_PORT_TYPE_ETH ;
 int mlx4_ib_SET_PORT (struct mlx4_ib_dev*,size_t,int,int) ;
 int mlx4_ib_query_port (struct ib_device*,size_t,struct ib_port_attr*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx4_ib_modify_port(struct ib_device *ibdev, u8 port, int mask,
          struct ib_port_modify *props)
{
 struct mlx4_ib_dev *mdev = to_mdev(ibdev);
 u8 is_eth = mdev->dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH;
 struct ib_port_attr attr;
 u32 cap_mask;
 int err;





 if (is_eth)
  return 0;

 mutex_lock(&mdev->cap_mask_mutex);

 err = mlx4_ib_query_port(ibdev, port, &attr);
 if (err)
  goto out;

 cap_mask = (attr.port_cap_flags | props->set_port_cap_mask) &
  ~props->clr_port_cap_mask;

 err = mlx4_ib_SET_PORT(mdev, port,
          !!(mask & IB_PORT_RESET_QKEY_CNTR),
          cap_mask);

out:
 mutex_unlock(&to_mdev(ibdev)->cap_mask_mutex);
 return err;
}
