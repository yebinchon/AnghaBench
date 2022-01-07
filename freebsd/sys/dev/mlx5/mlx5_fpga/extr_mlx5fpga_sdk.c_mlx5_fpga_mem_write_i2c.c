
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
struct mlx5_fpga_device {int mdev; } ;


 int EINVAL ;
 int ENOTCONN ;
 size_t MLX5_FPGA_ACCESS_REG_SIZE_MAX ;
 scalar_t__ min (size_t,size_t) ;
 int mlx5_fpga_access_reg (int ,scalar_t__,scalar_t__,scalar_t__*,int) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*) ;

__attribute__((used)) static int mlx5_fpga_mem_write_i2c(struct mlx5_fpga_device *fdev, size_t size,
       u64 addr, u8 *buf)
{
 size_t max_size = MLX5_FPGA_ACCESS_REG_SIZE_MAX;
 size_t bytes_done = 0;
 u8 actual_size;
 int err = 0;

 if (!size)
  return -EINVAL;

 if (!fdev->mdev)
  return -ENOTCONN;

 while (bytes_done < size) {
  actual_size = min(max_size, (size - bytes_done));

  err = mlx5_fpga_access_reg(fdev->mdev, actual_size,
        addr + bytes_done,
        buf + bytes_done, 1);
  if (err) {
   mlx5_fpga_err(fdev, "Failed to write FPGA crspace\n");
   break;
  }

  bytes_done += actual_size;
 }

 return err;
}
