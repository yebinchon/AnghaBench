#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_fpga_device {TYPE_1__* trans; } ;
struct TYPE_4__ {int tid; int /*<<< orphan*/  list_item; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_queue; TYPE_2__* transactions; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx5_fpga_device *fdev)
{
	int ret = 0;
	int tid;

	fdev->trans = FUNC2(sizeof(*fdev->trans), GFP_KERNEL);
	if (!fdev->trans) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC1(&fdev->trans->free_queue);
	for (tid = 0; tid < FUNC0(fdev->trans->transactions); tid++) {
		fdev->trans->transactions[tid].tid = tid;
		FUNC3(&fdev->trans->transactions[tid].list_item,
			      &fdev->trans->free_queue);
	}

	FUNC4(&fdev->trans->lock);

out:
	return ret;
}