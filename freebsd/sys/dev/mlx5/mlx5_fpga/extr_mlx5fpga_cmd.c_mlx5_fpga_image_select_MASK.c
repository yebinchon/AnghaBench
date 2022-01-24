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
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_fpga_image { ____Placeholder_mlx5_fpga_image } mlx5_fpga_image ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FPGA_CTRL_OPERATION_FLASH_SELECT ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct mlx5_core_dev *dev,
			   enum mlx5_fpga_image image)
{
	return FUNC0(dev, MLX5_FPGA_CTRL_OPERATION_FLASH_SELECT, image);
}