
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tools_dev {int dummy; } ;
struct mlx5_fpga_device {int dummy; } ;


 int dev_dbg (int ,char*) ;
 int mlx5_fpga_client_data_set (struct mlx5_fpga_device*,int *,struct mlx5_fpga_tools_dev*) ;
 int mlx5_fpga_dev (struct mlx5_fpga_device*) ;
 struct mlx5_fpga_tools_dev* mlx5_fpga_tools_alloc (struct mlx5_fpga_device*) ;
 int mlx5_fpga_tools_client ;

__attribute__((used)) static void mlx5_fpga_tools_create(struct mlx5_fpga_device *fdev)
{
 struct mlx5_fpga_tools_dev *dev = ((void*)0);

 dev_dbg(mlx5_fpga_dev(fdev), "tools_create\n");

 dev = mlx5_fpga_tools_alloc(fdev);
 if (!dev)
  return;

 mlx5_fpga_client_data_set(fdev, &mlx5_fpga_tools_client, dev);
}
