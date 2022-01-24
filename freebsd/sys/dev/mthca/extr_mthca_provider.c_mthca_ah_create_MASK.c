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
struct ib_ah {int dummy; } ;
struct mthca_ah {struct ib_ah ibah; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_ah_attr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_ah* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_ah*) ; 
 struct mthca_ah* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_ah_attr*,struct mthca_ah*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_ah *FUNC6(struct ib_pd *pd,
				     struct ib_ah_attr *ah_attr,
				     struct ib_udata *udata)
{
	int err;
	struct mthca_ah *ah;

	ah = FUNC2(sizeof *ah, GFP_ATOMIC);
	if (!ah)
		return FUNC0(-ENOMEM);

	err = FUNC3(FUNC4(pd->device), FUNC5(pd), ah_attr, ah);
	if (err) {
		FUNC1(ah);
		return FUNC0(err);
	}

	return &ah->ibah;
}