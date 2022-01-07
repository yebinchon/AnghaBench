
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_fpga_device {int mdev; } ;


 int MLX5_CAP64_FPGA (int ,int ) ;
 int fpga_ddr_start_addr ;

u64 mlx5_fpga_ddr_base_get(struct mlx5_fpga_device *fdev)
{
 return MLX5_CAP64_FPGA(fdev->mdev, fpga_ddr_start_addr);
}
