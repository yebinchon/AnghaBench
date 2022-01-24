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
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,int /*<<< orphan*/ *,struct mlx5_fpga_tools_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_device*) ; 
 struct mlx5_fpga_tools_dev* FUNC3 (struct mlx5_fpga_device*) ; 
 int /*<<< orphan*/  mlx5_fpga_tools_client ; 

__attribute__((used)) static void FUNC4(struct mlx5_fpga_device *fdev)
{
	struct mlx5_fpga_tools_dev *dev = NULL;

	FUNC0(FUNC2(fdev), "tools_create\n");

	dev = FUNC3(fdev);
	if (!dev)
		return;

	FUNC1(fdev, &mlx5_fpga_tools_client, dev);
}