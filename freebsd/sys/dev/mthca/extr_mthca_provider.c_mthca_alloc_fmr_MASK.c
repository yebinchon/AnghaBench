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
struct ib_fmr {int dummy; } ;
struct mthca_fmr {struct ib_fmr ibmr; int /*<<< orphan*/  attr; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_fmr_attr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pd_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_fmr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_fmr*) ; 
 struct mthca_fmr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ib_fmr_attr*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mthca_fmr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_fmr *FUNC8(struct ib_pd *pd, int mr_access_flags,
				      struct ib_fmr_attr *fmr_attr)
{
	struct mthca_fmr *fmr;
	int err;

	fmr = FUNC3(sizeof *fmr, GFP_KERNEL);
	if (!fmr)
		return FUNC0(-ENOMEM);

	FUNC4(&fmr->attr, fmr_attr, sizeof *fmr_attr);
	err = FUNC5(FUNC6(pd->device), FUNC7(pd)->pd_num,
			     FUNC1(mr_access_flags), fmr);

	if (err) {
		FUNC2(fmr);
		return FUNC0(err);
	}

	return &fmr->ibmr;
}