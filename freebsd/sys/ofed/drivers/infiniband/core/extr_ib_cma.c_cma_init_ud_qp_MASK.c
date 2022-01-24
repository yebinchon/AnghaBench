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
struct rdma_id_private {int /*<<< orphan*/  id; } ;
struct ib_qp_attr {scalar_t__ sq_psn; int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_INIT ; 
 int /*<<< orphan*/  IB_QPS_RTR ; 
 int /*<<< orphan*/  IB_QPS_RTS ; 
 int IB_QP_SQ_PSN ; 
 int IB_QP_STATE ; 
 int FUNC0 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ib_qp_attr*,int*) ; 

__attribute__((used)) static int FUNC2(struct rdma_id_private *id_priv, struct ib_qp *qp)
{
	struct ib_qp_attr qp_attr;
	int qp_attr_mask, ret;

	qp_attr.qp_state = IB_QPS_INIT;
	ret = FUNC1(&id_priv->id, &qp_attr, &qp_attr_mask);
	if (ret)
		return ret;

	ret = FUNC0(qp, &qp_attr, qp_attr_mask);
	if (ret)
		return ret;

	qp_attr.qp_state = IB_QPS_RTR;
	ret = FUNC0(qp, &qp_attr, IB_QP_STATE);
	if (ret)
		return ret;

	qp_attr.qp_state = IB_QPS_RTS;
	qp_attr.sq_psn = 0;
	ret = FUNC0(qp, &qp_attr, IB_QP_STATE | IB_QP_SQ_PSN);

	return ret;
}