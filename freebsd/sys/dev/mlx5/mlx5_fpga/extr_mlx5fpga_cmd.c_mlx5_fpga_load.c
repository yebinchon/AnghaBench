
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_fpga_image { ____Placeholder_mlx5_fpga_image } mlx5_fpga_image ;


 int MLX5_FPGA_CTRL_OPERATION_LOAD ;
 int mlx5_fpga_ctrl_write (struct mlx5_core_dev*,int ,int) ;

int mlx5_fpga_load(struct mlx5_core_dev *dev, enum mlx5_fpga_image image)
{
 return mlx5_fpga_ctrl_write(dev, MLX5_FPGA_CTRL_OPERATION_LOAD, image);
}
