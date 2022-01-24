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
struct ib_pd {int dummy; } ;
struct mthca_pd {struct ib_pd ibpd; int /*<<< orphan*/  pd_num; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_pd* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_pd*) ; 
 struct mthca_pd* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct mthca_pd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mthca_pd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 

__attribute__((used)) static struct ib_pd *FUNC7(struct ib_device *ibdev,
				    struct ib_ucontext *context,
				    struct ib_udata *udata)
{
	struct mthca_pd *pd;
	int err;

	pd = FUNC3(sizeof *pd, GFP_KERNEL);
	if (!pd)
		return FUNC0(-ENOMEM);

	err = FUNC4(FUNC6(ibdev), !context, pd);
	if (err) {
		FUNC2(pd);
		return FUNC0(err);
	}

	if (context) {
		if (FUNC1(udata, &pd->pd_num, sizeof (__u32))) {
			FUNC5(FUNC6(ibdev), pd);
			FUNC2(pd);
			return FUNC0(-EFAULT);
		}
	}

	return &pd->ibpd;
}