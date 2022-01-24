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
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  tid_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ECORE_ELEM_TASK ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

enum _ecore_status_t FUNC6(void	*rdma_cxt,
					  u32	*itid)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	enum _ecore_status_t rc;

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "Allocate TID\n");

	FUNC2(&p_hwfn->p_rdma_info->lock);
	rc = FUNC5(p_hwfn,
				      &p_hwfn->p_rdma_info->tid_map,
				      itid);
	FUNC3(&p_hwfn->p_rdma_info->lock);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn, false, "Failed in allocating tid\n");
		goto out;
	}

	rc = FUNC4(p_hwfn, ECORE_ELEM_TASK, *itid);
out:
	FUNC1(p_hwfn, ECORE_MSG_RDMA, "Allocate TID - done, rc = %d\n", rc);
	return rc;
}