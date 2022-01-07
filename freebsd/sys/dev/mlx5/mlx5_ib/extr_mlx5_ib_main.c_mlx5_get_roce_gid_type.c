
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct mlx5_ib_dev {int ib_dev; } ;
struct ib_gid_attr {int gid_type; int ndev; } ;
typedef enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;


 int ENODEV ;
 int dev_put (int ) ;
 int ib_get_cached_gid (int *,int ,int,union ib_gid*,struct ib_gid_attr*) ;

int mlx5_get_roce_gid_type(struct mlx5_ib_dev *dev, u8 port_num,
      int index, enum ib_gid_type *gid_type)
{
 struct ib_gid_attr attr;
 union ib_gid gid;
 int ret;

 ret = ib_get_cached_gid(&dev->ib_dev, port_num, index, &gid, &attr);
 if (ret)
  return ret;

 if (!attr.ndev)
  return -ENODEV;

 dev_put(attr.ndev);

 *gid_type = attr.gid_type;

 return 0;
}
