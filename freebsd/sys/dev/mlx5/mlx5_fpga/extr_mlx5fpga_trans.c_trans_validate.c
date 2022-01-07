
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uintmax_t ;
typedef size_t u64 ;
typedef int u32 ;
struct mlx5_fpga_device {int dummy; } ;


 int EINVAL ;
 size_t MLX5_FPGA_TRANSACTION_MAX_SIZE ;
 size_t MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS ;
 size_t MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS ;
 size_t mlx5_fpga_ddr_base_get (struct mlx5_fpga_device*) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,size_t,...) ;

__attribute__((used)) static int trans_validate(struct mlx5_fpga_device *fdev, u64 addr, size_t size)
{
 if (size > MLX5_FPGA_TRANSACTION_MAX_SIZE) {
  mlx5_fpga_warn(fdev, "Cannot access %zu bytes at once. Max is %u\n",
          size, MLX5_FPGA_TRANSACTION_MAX_SIZE);
  return -EINVAL;
 }
 if (size & MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS) {
  mlx5_fpga_warn(fdev, "Cannot access %zu bytes. Must be full dwords\n",
          size);
  return -EINVAL;
 }
 if (size < 1) {
  mlx5_fpga_warn(fdev, "Cannot access %zu bytes. Empty transaction not allowed\n",
          size);
  return -EINVAL;
 }
 if (addr & MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS) {
  mlx5_fpga_warn(fdev, "Cannot access %zu bytes at unaligned address %jx\n",
          size, (uintmax_t)addr);
  return -EINVAL;
 }
 if ((addr >> MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS) !=
     ((addr + size - 1) >> MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS)) {
  mlx5_fpga_warn(fdev, "Cannot access %zu bytes at address %jx. Crosses page boundary\n",
          size, (uintmax_t)addr);
  return -EINVAL;
 }
 if (addr < mlx5_fpga_ddr_base_get(fdev)) {
  if (size != sizeof(u32)) {
   mlx5_fpga_warn(fdev, "Cannot access %zu bytes at cr-space address %jx. Must access a single dword\n",
           size, (uintmax_t)addr);
   return -EINVAL;
  }
 }
 return 0;
}
