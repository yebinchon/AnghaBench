
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int cmdq_addr_l_sz; int initializing; } ;


 int MLX5_FW_RESET_SUPPORTED_OFFSET ;
 scalar_t__ MLX5_NIC_IFC_OFFSET ;
 scalar_t__ MLX5_NIC_IFC_SW_RESET ;
 scalar_t__ MLX5_SENSOR_NIC_DISABLED ;
 scalar_t__ MLX5_SENSOR_NIC_SW_RESET ;
 scalar_t__ MLX5_SENSOR_PCI_COMM_ERR ;
 scalar_t__ check_fatal_sensors (struct mlx5_core_dev*) ;
 int ioread32be (int *) ;
 int iowrite32be (scalar_t__,int *) ;
 int mlx5_core_info (struct mlx5_core_dev*,char*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_fw_reset_enable ;

__attribute__((used)) static void reset_fw_if_needed(struct mlx5_core_dev *dev)
{
 bool supported;
 u32 cmdq_addr, fatal_error;

 if (!mlx5_fw_reset_enable)
  return;
 supported = (ioread32be(&dev->iseg->initializing) >>
     MLX5_FW_RESET_SUPPORTED_OFFSET) & 1;
 if (!supported)
  return;






 fatal_error = check_fatal_sensors(dev);
 if (fatal_error == MLX5_SENSOR_PCI_COMM_ERR ||
     fatal_error == MLX5_SENSOR_NIC_DISABLED ||
     fatal_error == MLX5_SENSOR_NIC_SW_RESET) {
  mlx5_core_warn(dev,
      "Not issuing FW reset. Either it's already done or won't help.\n");
  return;
 }

 mlx5_core_info(dev, "Issuing FW Reset\n");



 cmdq_addr = ioread32be(&dev->iseg->cmdq_addr_l_sz);
 iowrite32be((cmdq_addr & 0xFFFFF000) |
      MLX5_NIC_IFC_SW_RESET << MLX5_NIC_IFC_OFFSET,
      &dev->iseg->cmdq_addr_l_sz);
}
