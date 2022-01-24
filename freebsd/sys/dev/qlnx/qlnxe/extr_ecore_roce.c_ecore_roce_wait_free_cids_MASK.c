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
typedef  scalar_t__ u32 ;
struct ecore_rdma_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  cid_map; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; struct ecore_rdma_info* p_rdma_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int ECORE_AGAIN ; 
 scalar_t__ ECORE_ROCE_CREATE_QP_ATTEMPTS ; 
 int /*<<< orphan*/  ECORE_ROCE_CREATE_QP_MSLEEP ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static enum _ecore_status_t FUNC6(struct ecore_hwfn *p_hwfn, u32 qp_idx)
{
	struct ecore_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
	bool cids_free = false;
	u32 icid, iter = 0;
	int req, resp;

	icid = FUNC1(qp_idx);

	/* Make sure that the cids that were used by the QP index are free.
	 * This is necessary because the destroy flow returns to the user before
	 * the device finishes clean up.
	 * It can happen in the following flows:
	 * (1) ib_destroy_qp followed by an ib_create_qp
	 * (2) ib_modify_qp to RESET followed (not immediately), by an
	 *     ib_modify_qp to RTR
	 */

	do {
		FUNC3(&p_rdma_info->lock);
		resp = FUNC5(p_hwfn, &p_rdma_info->cid_map, icid);
		req = FUNC5(p_hwfn, &p_rdma_info->cid_map, icid + 1);
		if (!resp && !req)
			cids_free = true;

		FUNC4(&p_rdma_info->lock);

		if (!cids_free) {
			FUNC2(ECORE_ROCE_CREATE_QP_MSLEEP);
			iter++;
		}
	} while (!cids_free && iter < ECORE_ROCE_CREATE_QP_ATTEMPTS);

	if (!cids_free) {
		FUNC0(p_hwfn->p_dev,
		       "responder and/or requester CIDs are still in use. resp=%d, req=%d\n",
		       resp, req);
		return ECORE_AGAIN;
	}

	return ECORE_SUCCESS;
}