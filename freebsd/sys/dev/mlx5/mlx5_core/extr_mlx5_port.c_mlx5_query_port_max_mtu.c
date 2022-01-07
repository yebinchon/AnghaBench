
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_query_port_mtu (struct mlx5_core_dev*,int *,int*,int *) ;

int mlx5_query_port_max_mtu(struct mlx5_core_dev *dev, int *max_mtu)
{
 return mlx5_query_port_mtu(dev, ((void*)0), max_mtu, ((void*)0));
}
