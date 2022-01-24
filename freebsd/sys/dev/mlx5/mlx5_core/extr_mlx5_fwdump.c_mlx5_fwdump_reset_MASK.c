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
struct mlx5_core_dev {int dump_valid; int /*<<< orphan*/  dump_lock; scalar_t__ dump_copyout; int /*<<< orphan*/ * dump_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct mlx5_core_dev *mdev)
{
	int error;

	error = 0;
	FUNC1(&mdev->dump_lock);
	if (mdev->dump_data != NULL) {
		while (mdev->dump_copyout) {
			FUNC0(&mdev->dump_copyout, &mdev->dump_lock,
			    0, "mlx5fwr", 0);
		}
		mdev->dump_valid = false;
	} else {
		error = ENOENT;
	}
	FUNC2(&mdev->dump_lock);
	return (error);
}