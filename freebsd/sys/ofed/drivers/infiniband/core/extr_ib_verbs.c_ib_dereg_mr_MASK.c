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
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_mr {TYPE_1__* device; struct ib_pd* pd; } ;
struct TYPE_2__ {int (* dereg_mr ) (struct ib_mr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ib_mr*) ; 

int FUNC2(struct ib_mr *mr)
{
	struct ib_pd *pd = mr->pd;
	int ret;

	ret = mr->device->dereg_mr(mr);
	if (!ret)
		FUNC0(&pd->usecnt);

	return ret;
}