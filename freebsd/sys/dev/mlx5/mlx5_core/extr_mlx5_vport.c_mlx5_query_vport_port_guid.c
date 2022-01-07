
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;


 int mlx5_query_hca_vport_port_guid (struct mlx5_core_dev*,int *) ;
 int mlx5_query_nic_vport_port_guid (struct mlx5_core_dev*,int *) ;
 int port_type ;

int mlx5_query_vport_port_guid(struct mlx5_core_dev *dev, u64 *port_guid)
{
 switch (MLX5_CAP_GEN(dev, port_type)) {
 case 128:
  return mlx5_query_hca_vport_port_guid(dev, port_guid);

 case 129:
  return mlx5_query_nic_vport_port_guid(dev, port_guid);

 default:
  return -EINVAL;
 }
}
