
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tools_dev {int dummy; } ;


 int kfree (struct mlx5_fpga_tools_dev*) ;
 int mlx5_fpga_tools_char_remove_one (struct mlx5_fpga_tools_dev*) ;

void mlx5_fpga_tools_free(struct mlx5_fpga_tools_dev *tdev)
{
 mlx5_fpga_tools_char_remove_one(tdev);
 kfree(tdev);
}
