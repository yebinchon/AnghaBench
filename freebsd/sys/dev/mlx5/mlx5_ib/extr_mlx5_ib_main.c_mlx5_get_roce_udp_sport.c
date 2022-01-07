
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct mlx5_ib_dev {int mdev; int ib_dev; } ;
struct ib_gid_attr {scalar_t__ gid_type; int ndev; } ;
typedef int __be16 ;


 scalar_t__ IB_GID_TYPE_ROCE_UDP_ENCAP ;
 int MLX5_CAP_ROCE (int ,int ) ;
 int cpu_to_be16 (int ) ;
 int dev_put (int ) ;
 scalar_t__ ib_get_cached_gid (int *,int ,int,union ib_gid*,struct ib_gid_attr*) ;
 int r_roce_min_src_udp_port ;

__be16 mlx5_get_roce_udp_sport(struct mlx5_ib_dev *dev, u8 port_num,
          int index)
{
 struct ib_gid_attr attr;
 union ib_gid gid;

 if (ib_get_cached_gid(&dev->ib_dev, port_num, index, &gid, &attr))
  return 0;

 if (!attr.ndev)
  return 0;

 dev_put(attr.ndev);

 if (attr.gid_type != IB_GID_TYPE_ROCE_UDP_ENCAP)
  return 0;

 return cpu_to_be16(MLX5_CAP_ROCE(dev->mdev, r_roce_min_src_udp_port));
}
