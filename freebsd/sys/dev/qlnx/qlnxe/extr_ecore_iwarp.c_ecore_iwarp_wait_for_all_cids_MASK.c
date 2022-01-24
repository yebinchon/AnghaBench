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
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  cid_map; int /*<<< orphan*/  tcp_cid_map; } ;

/* Variables and functions */
 int ECORE_IWARP_PREALLOC_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC2(struct ecore_hwfn *p_hwfn)
{
	enum _ecore_status_t rc;
	int i;

	rc = FUNC1(
		p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map);
	if (rc)
		return rc;

	/* Now free the tcp cids from the main cid map */
	for (i = 0; i < ECORE_IWARP_PREALLOC_CNT; i++) {
		FUNC0(p_hwfn,
				      &p_hwfn->p_rdma_info->cid_map,
				      i);
	}

	/* Now wait for all cids to be completed */
	rc = FUNC1(
		p_hwfn, &p_hwfn->p_rdma_info->cid_map);

	return rc;
}