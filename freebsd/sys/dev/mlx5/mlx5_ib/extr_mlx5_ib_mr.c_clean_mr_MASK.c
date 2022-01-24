#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int /*<<< orphan*/  psv_idx; } ;
struct TYPE_6__ {int /*<<< orphan*/  psv_idx; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_mr {int umred; TYPE_4__ mmkey; struct mlx5_ib_mr* sig; TYPE_3__ psv_wire; TYPE_2__ psv_memory; TYPE_1__ ibmr; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_mr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,...) ; 
 struct mlx5_ib_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 

__attribute__((used)) static int FUNC8(struct mlx5_ib_mr *mr)
{
	struct mlx5_ib_dev *dev = FUNC6(mr->ibmr.device);
	int umred = mr->umred;
	int err;

	if (mr->sig) {
		if (FUNC3(dev->mdev,
					  mr->sig->psv_memory.psv_idx))
			FUNC5(dev, "failed to destroy mem psv %d\n",
				     mr->sig->psv_memory.psv_idx);
		if (FUNC3(dev->mdev,
					  mr->sig->psv_wire.psv_idx))
			FUNC5(dev, "failed to destroy wire psv %d\n",
				     mr->sig->psv_wire.psv_idx);
		FUNC2(mr->sig);
		mr->sig = NULL;
	}

	FUNC4(mr);

	if (!umred) {
		err = FUNC0(dev, mr);
		if (err) {
			FUNC5(dev, "failed to destroy mkey 0x%x (%d)\n",
				     mr->mmkey.key, err);
			return err;
		}
	} else {
		err = FUNC7(dev, mr);
		if (err) {
			FUNC5(dev, "failed unregister\n");
			return err;
		}
		FUNC1(dev, mr);
	}

	if (!umred)
		FUNC2(mr);

	return 0;
}