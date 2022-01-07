
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_FPGA_CTRL_OPERATION_RESET_SANDBOX ;
 int MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_OFF ;
 int MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON ;
 int mlx5_fpga_ctrl_op (struct mlx5_core_dev*,int ) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int) ;

__attribute__((used)) static int mlx5_fpga_device_brb(struct mlx5_fpga_device *fdev)
{
 int err;
 struct mlx5_core_dev *mdev = fdev->mdev;

 err = mlx5_fpga_ctrl_op(mdev, MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to set bypass on: %d\n", err);
  return err;
 }
 err = mlx5_fpga_ctrl_op(mdev, MLX5_FPGA_CTRL_OPERATION_RESET_SANDBOX);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to reset SBU: %d\n", err);
  return err;
 }
 err = mlx5_fpga_ctrl_op(mdev, MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_OFF);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to set bypass off: %d\n", err);
  return err;
 }
 return 0;
}
