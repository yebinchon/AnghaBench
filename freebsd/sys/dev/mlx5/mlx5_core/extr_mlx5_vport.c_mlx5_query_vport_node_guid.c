
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;


 int mlx5_query_hca_vport_node_guid (struct mlx5_core_dev*,int *) ;
 int mlx5_query_nic_vport_node_guid (struct mlx5_core_dev*,int *) ;
 int port_type ;

int mlx5_query_vport_node_guid(struct mlx5_core_dev *dev, u64 *node_guid)
{
 switch (MLX5_CAP_GEN(dev, port_type)) {
 case 128:
  return mlx5_query_hca_vport_node_guid(dev, node_guid);

 case 129:
  return mlx5_query_nic_vport_node_guid(dev, node_guid);

 default:
  return -EINVAL;
 }
}
