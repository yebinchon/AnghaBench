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
struct vnode {int dummy; } ;
struct dquot {int dq_cnt; int dq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int DQ_MOD ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct dquot* NODQUOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dq_freelist ; 
 int /*<<< orphan*/  dqfreelist ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct dquot*) ; 

void
FUNC5(struct vnode *vp, struct dquot *dq)
{

	if (dq == NODQUOT)
		return;
	FUNC0();
	FUNC2(dq->dq_cnt > 0, ("Lost dq %p reference 1", dq));
	if (dq->dq_cnt > 1) {
		dq->dq_cnt--;
		FUNC1();
		return;
	}
	FUNC1();
sync:
	(void) FUNC4(vp, dq);

	FUNC0();
	FUNC2(dq->dq_cnt > 0, ("Lost dq %p reference 2", dq));
	if (--dq->dq_cnt > 0)
	{
		FUNC1();
		return;
	}

	/*
	 * The dq may become dirty after it is synced but before it is
	 * put to the free list. Checking the DQ_MOD there without
	 * locking dq should be safe since no other references to the
	 * dq exist.
	 */
	if ((dq->dq_flags & DQ_MOD) != 0) {
		dq->dq_cnt++;
		FUNC1();
		goto sync;
	}
	FUNC3(&dqfreelist, dq, dq_freelist);
	FUNC1();
}