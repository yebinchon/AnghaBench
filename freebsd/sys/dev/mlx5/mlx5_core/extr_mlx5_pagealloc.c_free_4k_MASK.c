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
typedef  scalar_t__ u64 ;
struct mlx5_fw_page {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,long long) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fw_page*) ; 
 struct mlx5_fw_page* FUNC4 (struct mlx5_core_dev*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct mlx5_core_dev *dev, u64 addr)
{
	struct mlx5_fw_page *fwp;

	FUNC0(dev);
	fwp = FUNC4(dev, addr);
	FUNC1(dev);

	if (fwp == NULL) {
		FUNC2(dev, "Cannot free 4K page at 0x%llx\n", (long long)addr);
		return;
	}
	FUNC3(fwp);
}