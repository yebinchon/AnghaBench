#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uintmax_t ;
typedef  size_t u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fpga_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t MLX5_FPGA_TRANSACTION_MAX_SIZE ; 
 size_t MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS ; 
 size_t MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS ; 
 size_t FUNC0 (struct mlx5_fpga_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,char*,size_t,...) ; 

__attribute__((used)) static int FUNC2(struct mlx5_fpga_device *fdev, u64 addr, size_t size)
{
	if (size > MLX5_FPGA_TRANSACTION_MAX_SIZE) {
		FUNC1(fdev, "Cannot access %zu bytes at once. Max is %u\n",
			       size, MLX5_FPGA_TRANSACTION_MAX_SIZE);
		return -EINVAL;
	}
	if (size & MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS) {
		FUNC1(fdev, "Cannot access %zu bytes. Must be full dwords\n",
			       size);
		return -EINVAL;
	}
	if (size < 1) {
		FUNC1(fdev, "Cannot access %zu bytes. Empty transaction not allowed\n",
			       size);
		return -EINVAL;
	}
	if (addr & MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS) {
		FUNC1(fdev, "Cannot access %zu bytes at unaligned address %jx\n",
			       size, (uintmax_t)addr);
		return -EINVAL;
	}
	if ((addr >> MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS) !=
	    ((addr + size - 1) >> MLX5_FPGA_TRANSACTION_SEND_PAGE_BITS)) {
		FUNC1(fdev, "Cannot access %zu bytes at address %jx. Crosses page boundary\n",
			       size, (uintmax_t)addr);
		return -EINVAL;
	}
	if (addr < FUNC0(fdev)) {
		if (size != sizeof(u32)) {
			FUNC1(fdev, "Cannot access %zu bytes at cr-space address %jx. Must access a single dword\n",
				       size, (uintmax_t)addr);
			return -EINVAL;
		}
	}
	return 0;
}