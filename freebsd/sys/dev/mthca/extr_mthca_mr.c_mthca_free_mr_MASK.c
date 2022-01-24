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
struct TYPE_4__ {int /*<<< orphan*/  lkey; } ;
struct mthca_mr {int /*<<< orphan*/  mtt; TYPE_2__ ibmr; } ;
struct TYPE_3__ {int num_mpts; } ;
struct mthca_dev {TYPE_1__ limits; } ;

/* Variables and functions */
 int FUNC0 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mthca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,char*,int) ; 

void FUNC5(struct mthca_dev *dev, struct mthca_mr *mr)
{
	int err;

	err = FUNC1(dev, NULL,
			      FUNC0(dev, mr->ibmr.lkey) &
			      (dev->limits.num_mpts - 1));
	if (err)
		FUNC4(dev, "HW2SW_MPT failed (%d)\n", err);

	FUNC3(dev, mr->ibmr.lkey);
	FUNC2(dev, mr->mtt);
}