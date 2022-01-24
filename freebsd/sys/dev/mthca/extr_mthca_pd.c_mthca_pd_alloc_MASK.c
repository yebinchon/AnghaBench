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
struct mthca_pd {int privileged; int pd_num; int /*<<< orphan*/  ntmr; int /*<<< orphan*/  sqp_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc; } ;
struct mthca_dev {TYPE_1__ pd_table; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MTHCA_MPT_FLAG_LOCAL_READ ; 
 int MTHCA_MPT_FLAG_LOCAL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct mthca_dev*,int,int,int /*<<< orphan*/ *) ; 

int FUNC4(struct mthca_dev *dev, int privileged, struct mthca_pd *pd)
{
	int err = 0;

	pd->privileged = privileged;

	FUNC0(&pd->sqp_count, 0);
	pd->pd_num = FUNC1(&dev->pd_table.alloc);
	if (pd->pd_num == -1)
		return -ENOMEM;

	if (privileged) {
		err = FUNC3(dev, pd->pd_num,
					     MTHCA_MPT_FLAG_LOCAL_READ |
					     MTHCA_MPT_FLAG_LOCAL_WRITE,
					     &pd->ntmr);
		if (err)
			FUNC2(&dev->pd_table.alloc, pd->pd_num);
	}

	return err;
}