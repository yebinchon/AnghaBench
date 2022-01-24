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
struct ib_wq {TYPE_1__* device; int /*<<< orphan*/  usecnt; struct ib_pd* pd; struct ib_cq* cq; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_cq {int /*<<< orphan*/  usecnt; } ;
struct TYPE_2__ {int (* destroy_wq ) (struct ib_wq*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ib_wq*) ; 

int FUNC3(struct ib_wq *wq)
{
	int err;
	struct ib_cq *cq = wq->cq;
	struct ib_pd *pd = wq->pd;

	if (FUNC1(&wq->usecnt))
		return -EBUSY;

	err = wq->device->destroy_wq(wq);
	if (!err) {
		FUNC0(&pd->usecnt);
		FUNC0(&cq->usecnt);
	}
	return err;
}