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
struct mlx5_fpga_tools_dev {int /*<<< orphan*/  lock; struct mlx5_fpga_device* fdev; } ;
struct mlx5_fpga_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_fpga_tools_dev*) ; 
 struct mlx5_fpga_tools_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_fpga_tools_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

struct mlx5_fpga_tools_dev *FUNC4(struct mlx5_fpga_device *fdev)
{
	int ret;
	struct mlx5_fpga_tools_dev *tdev;

	tdev = FUNC1(sizeof(*tdev), GFP_KERNEL);
	if (!tdev)
		goto out;

	tdev->fdev = fdev;
	FUNC3(&tdev->lock, "mlx5fpgat");
	ret = FUNC2(tdev);
	if (ret)
		goto err_free;

	goto out;

err_free:
	FUNC0(tdev);
	tdev = NULL;

out:
	return tdev;
}