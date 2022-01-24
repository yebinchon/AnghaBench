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
typedef  scalar_t__ u32 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cid_map; int /*<<< orphan*/  tcp_cid_map; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 scalar_t__ ECORE_IWARP_PREALLOC_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn, u32 cid)
{
	cid -= FUNC3(p_hwfn,
					     p_hwfn->p_rdma_info->proto);

	FUNC0(&p_hwfn->p_rdma_info->lock);

	if (cid < ECORE_IWARP_PREALLOC_CNT) {
		FUNC2(p_hwfn,
				      &p_hwfn->p_rdma_info->tcp_cid_map,
				      cid);
	} else {
		FUNC2(p_hwfn,
				      &p_hwfn->p_rdma_info->cid_map,
				      cid);
	}

	FUNC1(&p_hwfn->p_rdma_info->lock);
}