
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_fpga_device {int mdev; } ;


 scalar_t__ MLX5_CAP_FPGA (int ,int ) ;
 int fpga_ddr_size ;

u64 mlx5_fpga_ddr_size_get(struct mlx5_fpga_device *fdev)
{
 return (u64)MLX5_CAP_FPGA(fdev->mdev, fpga_ddr_size) << 10;
}
