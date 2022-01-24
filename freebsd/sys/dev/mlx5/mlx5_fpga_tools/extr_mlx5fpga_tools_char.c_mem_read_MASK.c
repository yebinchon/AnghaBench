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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ u64 ;
struct mlx5_fpga_tools_dev {int /*<<< orphan*/  fdev; int /*<<< orphan*/  lock; } ;
typedef  enum mlx5_fpga_access_type { ____Placeholder_mlx5_fpga_access_type } mlx5_fpga_access_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,scalar_t__,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mlx5_fpga_tools_dev *tdev, void *buf, size_t count,
    u64 address, enum mlx5_fpga_access_type access_type, size_t *retcnt)
{
	int ret;

	ret = FUNC3(&tdev->lock);
	if (ret != 0)
		return (ret);
	ret = FUNC2(tdev->fdev, count, address, buf, access_type);
	FUNC4(&tdev->lock);
	if (ret < 0) {
		FUNC0(FUNC1(tdev->fdev),
			"Failed to read %zu bytes at address 0x%jx: %d\n",
			count, (uintmax_t)address, ret);
		return (-ret);
	}
	*retcnt = ret;
	return (0);
}