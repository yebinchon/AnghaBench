
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_temperature {int dummy; } ;
struct mlx5_fpga_device {int mdev; } ;


 int mlx5_fpga_query_mtmp (int ,struct mlx5_fpga_temperature*) ;

int mlx5_fpga_temperature(struct mlx5_fpga_device *fdev,
     struct mlx5_fpga_temperature *temp)
{
 return mlx5_fpga_query_mtmp(fdev->mdev, temp);
}
