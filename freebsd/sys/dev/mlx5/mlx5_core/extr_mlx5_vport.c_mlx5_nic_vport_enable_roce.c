
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_nic_vport_enable_disable_roce (struct mlx5_core_dev*,int) ;

int mlx5_nic_vport_enable_roce(struct mlx5_core_dev *mdev)
{
 return mlx5_nic_vport_enable_disable_roce(mdev, 1);
}
