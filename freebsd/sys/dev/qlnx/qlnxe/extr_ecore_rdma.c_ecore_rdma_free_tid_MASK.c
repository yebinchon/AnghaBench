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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  tid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(void	*rdma_cxt,
			 u32	itid)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;

	FUNC0(p_hwfn, ECORE_MSG_RDMA, "itid = %08x\n", itid);

	FUNC1(&p_hwfn->p_rdma_info->lock);
	FUNC3(p_hwfn,
			      &p_hwfn->p_rdma_info->tid_map,
			      itid);
	FUNC2(&p_hwfn->p_rdma_info->lock);
}