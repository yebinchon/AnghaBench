
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_port_status { ____Placeholder_mlx5_port_status } mlx5_port_status ;


 int MLX5_PORT_DOWN ;
 int MLX5_PORT_UP ;
 int mlx5_query_port_admin_status (struct mlx5_core_dev*,int*) ;
 int mlx5_set_port_status (struct mlx5_core_dev*,int) ;

void mlx5_toggle_port_link(struct mlx5_core_dev *dev)
{
 enum mlx5_port_status ps;

 mlx5_query_port_admin_status(dev, &ps);
 mlx5_set_port_status(dev, MLX5_PORT_DOWN);
 if (ps == MLX5_PORT_UP)
  mlx5_set_port_status(dev, MLX5_PORT_UP);
}
