
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tools_dev {int dummy; } ;
struct mlx5_fpga_device {int dummy; } ;


 int dev_dbg (int ,char*) ;
 struct mlx5_fpga_tools_dev* mlx5_fpga_client_data_get (struct mlx5_fpga_device*,int *) ;
 int mlx5_fpga_dev (struct mlx5_fpga_device*) ;
 int mlx5_fpga_tools_client ;
 int mlx5_fpga_tools_free (struct mlx5_fpga_tools_dev*) ;

__attribute__((used)) static void mlx5_fpga_tools_destroy(struct mlx5_fpga_device *fdev)
{
 struct mlx5_fpga_tools_dev *dev;

 dev_dbg(mlx5_fpga_dev(fdev), "tools_destroy\n");

 dev = mlx5_fpga_client_data_get(fdev, &mlx5_fpga_tools_client);
 if (dev)
  mlx5_fpga_tools_free(dev);
}
