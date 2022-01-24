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
struct ecore_rdma_query_qp_out_params {int /*<<< orphan*/  state; int /*<<< orphan*/  draining; } ;
struct ecore_rdma_qp {int /*<<< orphan*/  cur_state; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int ECORE_SUCCESS ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_query_qp_out_params*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_query_qp_out_params*) ; 

enum _ecore_status_t FUNC2(
	struct ecore_hwfn *p_hwfn,
	struct ecore_rdma_qp *qp,
	struct ecore_rdma_query_qp_out_params *out_params)
{
	enum _ecore_status_t	rc;

	rc = FUNC1(p_hwfn, qp, out_params);
	if (rc)
		return rc;

	rc = FUNC0(p_hwfn, qp, out_params,
					   &out_params->draining);
	if (rc)
		return rc;

	out_params->state = qp->cur_state;

	return ECORE_SUCCESS;
}