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
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  RES_COUNTER ; 
 int RES_OP_RESERVE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx4_dev *dev, int slave, int op, int cmd,
			    u64 in_param, u64 *out_param)
{
	int index;
	int err;

	if (op != RES_OP_RESERVE)
		return -EINVAL;

	index = FUNC2(&in_param);
	if (index == FUNC0(dev))
		return 0;

	err = FUNC4(dev, slave, index, 1, RES_COUNTER, 0);
	if (err)
		return err;

	FUNC1(dev, index);
	FUNC3(dev, slave, RES_COUNTER, 1, 0);

	return err;
}