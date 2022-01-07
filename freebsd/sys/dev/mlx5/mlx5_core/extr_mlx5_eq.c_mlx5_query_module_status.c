
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {unsigned int* module_status; } ;


 int MLX5_MAX_PORTS ;

unsigned int mlx5_query_module_status(struct mlx5_core_dev *dev, int module_num)
{
 if (module_num < 0 || module_num >= MLX5_MAX_PORTS)
  return 0;
 return dev->module_status[module_num];
}
