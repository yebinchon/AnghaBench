
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;



 int mlx5_get_vport_access_method (struct ib_device*) ;
 int mlx5_query_hca_vport_pkey (struct mlx5_core_dev*,int ,int ,int ,int ,int *) ;
 int mlx5_query_mad_ifc_pkey (struct ib_device*,int ,int ,int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_ib_query_pkey(struct ib_device *ibdev, u8 port, u16 index,
         u16 *pkey)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev = dev->mdev;

 switch (mlx5_get_vport_access_method(ibdev)) {
 case 129:
  return mlx5_query_mad_ifc_pkey(ibdev, port, index, pkey);

 case 130:
 case 128:
  return mlx5_query_hca_vport_pkey(mdev, 0, port, 0, index,
       pkey);
 default:
  return -EINVAL;
 }
}
