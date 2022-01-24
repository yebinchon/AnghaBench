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
struct ecore_iwarp_info {scalar_t__ mpa_intermediate_buf; scalar_t__ mpa_bufs; scalar_t__ partial_fpdus; int /*<<< orphan*/  qp_lock; int /*<<< orphan*/  iw_lock; } ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; int /*<<< orphan*/  p_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_cid_map; struct ecore_iwarp_info iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct ecore_hwfn *p_hwfn)
{
	struct ecore_iwarp_info *iwarp_info = &p_hwfn->p_rdma_info->iwarp;

#ifdef CONFIG_ECORE_LOCK_ALLOC
	OSAL_SPIN_LOCK_DEALLOC(iwarp_info->iw_lock);
	OSAL_SPIN_LOCK_DEALLOC(iwarp_info->qp_lock);
#endif
	FUNC2(p_hwfn);
	if (iwarp_info->partial_fpdus)
		FUNC0(p_hwfn->p_dev, iwarp_info->partial_fpdus);
	if (iwarp_info->mpa_bufs)
		FUNC0(p_hwfn->p_dev, iwarp_info->mpa_bufs);
	if (iwarp_info->mpa_intermediate_buf)
		FUNC0(p_hwfn->p_dev, iwarp_info->mpa_intermediate_buf);

	FUNC3(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map, 1);
}