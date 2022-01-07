
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int fpga; } ;


 scalar_t__ MLX5_CAP_FPGA (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_FPGA_CAP_SANDBOX_PRODUCT_ID_IPSEC ;
 scalar_t__ MLX5_FPGA_CAP_SANDBOX_VENDOR_ID_MLNX ;
 int fpga ;
 int ieee_vendor_id ;
 int sandbox_product_id ;

__attribute__((used)) static bool mlx5_fpga_is_ipsec_device(struct mlx5_core_dev *mdev)
{
 if (!mdev->fpga || !MLX5_CAP_GEN(mdev, fpga))
  return 0;

 if (MLX5_CAP_FPGA(mdev, ieee_vendor_id) !=
     MLX5_FPGA_CAP_SANDBOX_VENDOR_ID_MLNX)
  return 0;

 if (MLX5_CAP_FPGA(mdev, sandbox_product_id) !=
     MLX5_FPGA_CAP_SANDBOX_PRODUCT_ID_IPSEC)
  return 0;

 return 1;
}
