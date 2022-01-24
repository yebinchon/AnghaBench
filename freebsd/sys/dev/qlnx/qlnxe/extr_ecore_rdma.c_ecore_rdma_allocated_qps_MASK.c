#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  bitmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; TYPE_2__ qp_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

bool FUNC3(struct ecore_hwfn *p_hwfn)
{
	bool result;

	/* if rdma info has not been allocated, naturally there are no qps */
	if (!p_hwfn->p_rdma_info)
		return false;

	FUNC0(&p_hwfn->p_rdma_info->lock);
	if (!p_hwfn->p_rdma_info->qp_map.bitmap)
		result = false;
	else
		result = !FUNC2(&p_hwfn->p_rdma_info->qp_map);
	FUNC1(&p_hwfn->p_rdma_info->lock);
	return result;
}