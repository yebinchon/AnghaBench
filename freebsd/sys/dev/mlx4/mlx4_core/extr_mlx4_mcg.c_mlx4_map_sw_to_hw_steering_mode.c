
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
typedef enum mlx4_net_trans_promisc_mode { ____Placeholder_mlx4_net_trans_promisc_mode } mlx4_net_trans_promisc_mode ;


 int EINVAL ;
 int MLX4_FS_MODE_NUM ;
 int* __promisc_mode ;
 int mlx4_err (struct mlx4_dev*,char*,int) ;

int mlx4_map_sw_to_hw_steering_mode(struct mlx4_dev *dev,
        enum mlx4_net_trans_promisc_mode flow_type)
{
 if (flow_type >= MLX4_FS_MODE_NUM) {
  mlx4_err(dev, "Invalid flow type. type = %d\n", flow_type);
  return -EINVAL;
 }
 return __promisc_mode[flow_type];
}
