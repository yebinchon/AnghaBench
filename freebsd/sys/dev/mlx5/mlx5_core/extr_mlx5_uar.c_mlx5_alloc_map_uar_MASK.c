#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_uar {int index; int /*<<< orphan*/  bf_map; int /*<<< orphan*/  map; } ;
struct TYPE_2__ {scalar_t__ bf_mapping; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  pdev; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct mlx5_core_dev *mdev, struct mlx5_uar *uar)
{
	phys_addr_t pfn;
	phys_addr_t uar_bar_start;
	int err;

	err = FUNC2(mdev, &uar->index);
	if (err) {
		FUNC4(mdev, "mlx5_cmd_alloc_uar() failed, %d\n", err);
		return err;
	}

	uar_bar_start = FUNC5(mdev->pdev, 0);
	pfn           = (uar_bar_start >> PAGE_SHIFT) + uar->index;
	uar->map      = FUNC1(pfn << PAGE_SHIFT, PAGE_SIZE);
	if (!uar->map) {
		FUNC4(mdev, "ioremap() failed, %d\n", err);
		err = -ENOMEM;
		goto err_free_uar;
	}

	if (mdev->priv.bf_mapping)
		uar->bf_map = FUNC0(mdev->priv.bf_mapping,
						uar->index << PAGE_SHIFT,
						PAGE_SIZE);

	return 0;

err_free_uar:
	FUNC3(mdev, uar->index);

	return err;
}