
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_NIC_IFC_DISABLED ;
 scalar_t__ mlx5_get_nic_state (struct mlx5_core_dev*) ;

__attribute__((used)) static bool sensor_nic_disabled(struct mlx5_core_dev *dev)
{
 return mlx5_get_nic_state(dev) == MLX5_NIC_IFC_DISABLED;
}
