
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fatal_error; } ;
struct TYPE_4__ {TYPE_1__ health; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;


 unsigned long MLX5_RECOVERY_DELAY_MSECS ;
 unsigned long MLX5_RECOVERY_NO_DELAY ;
 scalar_t__ MLX5_SENSOR_PCI_COMM_ERR ;
 scalar_t__ MLX5_SENSOR_PCI_ERR ;

__attribute__((used)) static unsigned long get_recovery_delay(struct mlx5_core_dev *dev)
{
 return dev->priv.health.fatal_error == MLX5_SENSOR_PCI_ERR ||
  dev->priv.health.fatal_error == MLX5_SENSOR_PCI_COMM_ERR ?
  MLX5_RECOVERY_DELAY_MSECS : MLX5_RECOVERY_NO_DELAY;
}
