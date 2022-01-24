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
struct TYPE_2__ {int /*<<< orphan*/  lkey; } ;
struct mthca_fmr {int /*<<< orphan*/  mtt; TYPE_1__ ibmr; scalar_t__ maps; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ) ; 

int FUNC2(struct mthca_dev *dev, struct mthca_fmr *fmr)
{
	if (fmr->maps)
		return -EBUSY;

	FUNC1(dev, fmr->ibmr.lkey);
	FUNC0(dev, fmr->mtt);

	return 0;
}