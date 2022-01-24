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
struct res_mpt {int /*<<< orphan*/  key; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RES_MPT ; 
 int /*<<< orphan*/  RES_MPT_MAPPED ; 
#define  RES_OP_MAP_ICM 129 
#define  RES_OP_RESERVE 128 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx4_dev*) ; 
 int FUNC8 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(struct mlx4_dev *dev, int slave, int op, int cmd,
			 u64 in_param, u64 *out_param)
{
	int err = -EINVAL;
	int index;
	int id;
	struct res_mpt *mpt;

	switch (op) {
	case RES_OP_RESERVE:
		err = FUNC5(dev, slave, RES_MPT, 1, 0);
		if (err)
			break;

		index = FUNC2(dev);
		if (index == -1) {
			FUNC6(dev, slave, RES_MPT, 1, 0);
			break;
		}
		id = index & FUNC7(dev);

		err = FUNC3(dev, slave, id, 1, RES_MPT, index);
		if (err) {
			FUNC6(dev, slave, RES_MPT, 1, 0);
			FUNC1(dev, index);
			break;
		}
		FUNC11(out_param, index);
		break;
	case RES_OP_MAP_ICM:
		index = FUNC4(&in_param);
		id = index & FUNC7(dev);
		err = FUNC8(dev, slave, id,
					   RES_MPT_MAPPED, &mpt);
		if (err)
			return err;

		err = FUNC0(dev, mpt->key, GFP_KERNEL);
		if (err) {
			FUNC9(dev, slave, RES_MPT, id);
			return err;
		}

		FUNC10(dev, slave, RES_MPT, id);
		break;
	}
	return err;
}