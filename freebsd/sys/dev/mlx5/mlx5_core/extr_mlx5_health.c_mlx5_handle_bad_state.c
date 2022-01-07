
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ fatal_error; } ;
struct TYPE_4__ {TYPE_1__ health; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;


 scalar_t__ MLX5_NIC_IFC_SW_RESET ;
 scalar_t__ MLX5_SENSOR_PCI_COMM_ERR ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 int mlx5_disable_device (struct mlx5_core_dev*) ;
 scalar_t__ mlx5_get_nic_state (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_handle_bad_state(struct mlx5_core_dev *dev)
{
 u8 nic_mode = mlx5_get_nic_state(dev);

 if (nic_mode == MLX5_NIC_IFC_SW_RESET) {
  if (dev->priv.health.fatal_error != MLX5_SENSOR_PCI_COMM_ERR)
   mlx5_core_warn(dev,
       "NIC SW reset is already progress\n");
  else
   mlx5_core_warn(dev,
       "Communication with FW over the PCI link is down\n");
 } else {
  mlx5_core_warn(dev, "NIC mode %d\n", nic_mode);
 }

 mlx5_disable_device(dev);
}
