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
typedef  int u16 ;
struct ixl_pf_qtag {int num_active; int num_allocated; int* qidx; int /*<<< orphan*/  type; struct ixl_pf_qmgr* qmgr; } ;
struct ixl_pf_qmgr {int num_queues; TYPE_1__* qinfo; } ;
struct TYPE_2__ {int allocated; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IXL_PF_QALLOC_SCATTERED ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_pf_qtag*,int) ; 
 int FUNC1 (struct ixl_pf_qmgr*) ; 
 scalar_t__ FUNC2 (int) ; 

int
FUNC3(struct ixl_pf_qmgr *qmgr, u16 num, struct ixl_pf_qtag *qtag)
{
	int i;
	int avail, count = 0;
	u16 alloc_size;

	if (qtag == NULL || num < 1 || num > 16)
		return (EINVAL);

	/* We have to allocate in power-of-two chunks, so get next power of two */
	alloc_size = (u16)FUNC2(num);

	avail = FUNC1(qmgr);
	if (avail < alloc_size)
		return (ENOSPC);

	FUNC0(qtag, sizeof(*qtag));
	qtag->qmgr = qmgr;
	qtag->type = IXL_PF_QALLOC_SCATTERED;
	qtag->num_active = num;
	qtag->num_allocated = alloc_size;

	for (i = 0; i < qmgr->num_queues; i++) {
		if (!qmgr->qinfo[i].allocated) {
			qtag->qidx[count] = i;
			count++;
			qmgr->qinfo[i].allocated = true;
			if (count == alloc_size)
				return (0);
		}
	}

	// Shouldn't get here
	return (EDOOFUS);
}