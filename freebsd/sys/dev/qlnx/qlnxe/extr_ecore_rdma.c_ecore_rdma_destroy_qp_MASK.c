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
struct ecore_rdma_qp {int /*<<< orphan*/  icid; } ;
struct ecore_rdma_destroy_qp_out_params {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,void*,struct ecore_rdma_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ecore_rdma_qp*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_rdma_qp*) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_destroy_qp_out_params*) ; 

enum _ecore_status_t FUNC6(void *rdma_cxt,
					   struct ecore_rdma_qp *qp,
					   struct ecore_rdma_destroy_qp_out_params *out_params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (!rdma_cxt || !qp) {
		FUNC0(p_hwfn,
		       "ecore rdma destroy qp failed: invalid NULL input. rdma_cxt=%p, qp=%p\n",
		       rdma_cxt, qp);
		return ECORE_INVAL;
	}

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "QP(0x%x)\n", qp->icid);

	if (FUNC2(p_hwfn))
		rc = FUNC4(p_hwfn, qp);
	else
		rc = FUNC5(p_hwfn, qp, out_params);

	/* free qp params struct */
	FUNC3(p_hwfn->p_dev, qp);

	return rc;
}