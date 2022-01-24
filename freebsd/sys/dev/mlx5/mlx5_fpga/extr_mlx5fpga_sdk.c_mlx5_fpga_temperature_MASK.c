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
struct mlx5_fpga_temperature {int dummy; } ;
struct mlx5_fpga_device {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct mlx5_fpga_temperature*) ; 

int FUNC1(struct mlx5_fpga_device *fdev,
			  struct mlx5_fpga_temperature *temp)
{
	return FUNC0(fdev->mdev, temp);
}