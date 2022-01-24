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
struct ixl_pf_qtag {int* qidx; int num_allocated; int num_active; int /*<<< orphan*/  type; struct ixl_pf_qmgr* qmgr; } ;
struct ixl_pf_qmgr {TYPE_1__* qinfo; } ;
struct TYPE_2__ {int allocated; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  IXL_PF_QALLOC_CONTIGUOUS ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_pf_qtag*,int) ; 
 int FUNC1 (struct ixl_pf_qmgr*,int) ; 
 int FUNC2 (struct ixl_pf_qmgr*) ; 
 scalar_t__ FUNC3 (int) ; 

int
FUNC4(struct ixl_pf_qmgr *qmgr, u16 num, struct ixl_pf_qtag *qtag)
{
	int i;
	int avail;
	int block_start;
	u16 alloc_size;

	if (qtag == NULL || num < 1)
		return (EINVAL);
	
	/* We have to allocate in power-of-two chunks, so get next power of two */
	alloc_size = (u16)FUNC3(num);

	/* Don't try if there aren't enough queues */
	avail = FUNC2(qmgr);
	if (avail < alloc_size)
		return (ENOSPC);

	block_start = FUNC1(qmgr, alloc_size);
	if (block_start < 0)
		return (ENOSPC);

	/* Mark queues as allocated */
	for (i = block_start; i < block_start + alloc_size; i++)
		qmgr->qinfo[i].allocated = true;

	FUNC0(qtag, sizeof(*qtag));
	qtag->qmgr = qmgr;
	qtag->type = IXL_PF_QALLOC_CONTIGUOUS;
	qtag->qidx[0] = block_start;
	qtag->num_allocated = alloc_size;
	qtag->num_active = num;

	return (0);
}