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
struct mlx5_fpga_tools_dev {int dummy; } ;
struct mlx5_fpga_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mlx5_fpga_tools_dev* FUNC1 (struct mlx5_fpga_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_device*) ; 
 int /*<<< orphan*/  mlx5_fpga_tools_client ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_tools_dev*) ; 

__attribute__((used)) static void FUNC4(struct mlx5_fpga_device *fdev)
{
	struct mlx5_fpga_tools_dev *dev;

	FUNC0(FUNC2(fdev), "tools_destroy\n");

	dev = FUNC1(fdev, &mlx5_fpga_tools_client);
	if (dev)
		FUNC3(dev);
}