
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int __be64 ;


 int EINVAL ;



 int cpu_to_be64 (int ) ;
 int mlx5_get_vport_access_method (struct ib_device*) ;
 int mlx5_query_hca_vport_system_image_guid (struct mlx5_core_dev*,int *) ;
 int mlx5_query_mad_ifc_system_image_guid (struct ib_device*,int *) ;
 int mlx5_query_nic_vport_system_image_guid (struct mlx5_core_dev*,int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_query_system_image_guid(struct ib_device *ibdev,
     __be64 *sys_image_guid)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev = dev->mdev;
 u64 tmp;
 int err;

 switch (mlx5_get_vport_access_method(ibdev)) {
 case 129:
  return mlx5_query_mad_ifc_system_image_guid(ibdev,
           sys_image_guid);

 case 130:
  err = mlx5_query_hca_vport_system_image_guid(mdev, &tmp);
  break;

 case 128:
  err = mlx5_query_nic_vport_system_image_guid(mdev, &tmp);
  break;

 default:
  return -EINVAL;
 }

 if (!err)
  *sys_image_guid = cpu_to_be64(tmp);

 return err;

}
