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
typedef  int uint32_t ;
struct mlx5_crspace_regmap {scalar_t__ cnt; scalar_t__ addr; } ;
struct mlx5_core_dev {int dump_valid; int /*<<< orphan*/  dump_lock; int /*<<< orphan*/ * dump_data; struct mlx5_crspace_regmap* dump_rege; } ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int /*<<< orphan*/  MLX5_VSC_DOMAIN_PROTECTED_CRSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct mlx5_core_dev *mdev)
{
	const struct mlx5_crspace_regmap *r;
	uint32_t i, ri;
	int error;

	FUNC0(mdev, "Issuing FW dump\n");
	FUNC6(&mdev->dump_lock);
	if (mdev->dump_data == NULL) {
		error = EIO;
		goto failed;
	}
	if (mdev->dump_valid) {
		/* only one dump */
		FUNC1(mdev,
		    "Only one FW dump can be captured aborting FW dump\n");
		error = EEXIST;
		goto failed;
	}

	/* mlx5_vsc already warns, be silent. */
	error = FUNC2(mdev);
	if (error != 0)
		goto failed;
	error = FUNC4(mdev, MLX5_VSC_DOMAIN_PROTECTED_CRSPACE);
	if (error != 0)
		goto unlock_vsc;
	for (i = 0, r = mdev->dump_rege; r->cnt != 0; r++) {
		for (ri = 0; ri < r->cnt; ri++) {
			error = FUNC3(mdev, r->addr + ri * 4,
			    &mdev->dump_data[i]);
			if (error != 0)
				goto unlock_vsc;
			i++;
		}
	}
	mdev->dump_valid = true;
unlock_vsc:
	FUNC5(mdev);
failed:
	FUNC7(&mdev->dump_lock);
	return (error);
}