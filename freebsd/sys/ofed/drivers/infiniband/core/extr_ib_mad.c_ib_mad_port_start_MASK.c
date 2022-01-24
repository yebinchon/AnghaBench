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
typedef  scalar_t__ u16 ;
struct ib_qp_attr {int /*<<< orphan*/  sq_psn; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  qkey; scalar_t__ pkey_index; } ;
struct ib_qp {scalar_t__ qp_num; } ;
struct ib_mad_port_private {TYPE_2__* device; TYPE_1__* qp_info; int /*<<< orphan*/  cq; int /*<<< orphan*/  port_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct ib_qp* qp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_DEFAULT_PKEY_FULL ; 
 int IB_MAD_QPS_CORE ; 
 int /*<<< orphan*/  IB_MAD_SEND_Q_PSN ; 
 int /*<<< orphan*/  IB_QP1_QKEY ; 
 int /*<<< orphan*/  IB_QPS_INIT ; 
 int /*<<< orphan*/  IB_QPS_RTR ; 
 int /*<<< orphan*/  IB_QPS_RTS ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_QKEY ; 
 int IB_QP_SQ_PSN ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp_attr*) ; 
 struct ib_qp_attr* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ib_mad_port_private *port_priv)
{
	int ret, i;
	struct ib_qp_attr *attr;
	struct ib_qp *qp;
	u16 pkey_index;

	attr = FUNC6(sizeof *attr, GFP_KERNEL);
	if (!attr) {
		FUNC0(&port_priv->device->dev,
			"Couldn't kmalloc ib_qp_attr\n");
		return -ENOMEM;
	}

	ret = FUNC1(port_priv->device, port_priv->port_num,
			   IB_DEFAULT_PKEY_FULL, &pkey_index);
	if (ret)
		pkey_index = 0;

	for (i = 0; i < IB_MAD_QPS_CORE; i++) {
		qp = port_priv->qp_info[i].qp;
		if (!qp)
			continue;

		/*
		 * PKey index for QP1 is irrelevant but
		 * one is needed for the Reset to Init transition
		 */
		attr->qp_state = IB_QPS_INIT;
		attr->pkey_index = pkey_index;
		attr->qkey = (qp->qp_num == 0) ? 0 : IB_QP1_QKEY;
		ret = FUNC3(qp, attr, IB_QP_STATE |
					     IB_QP_PKEY_INDEX | IB_QP_QKEY);
		if (ret) {
			FUNC0(&port_priv->device->dev,
				"Couldn't change QP%d state to INIT: %d\n",
				i, ret);
			goto out;
		}

		attr->qp_state = IB_QPS_RTR;
		ret = FUNC3(qp, attr, IB_QP_STATE);
		if (ret) {
			FUNC0(&port_priv->device->dev,
				"Couldn't change QP%d state to RTR: %d\n",
				i, ret);
			goto out;
		}

		attr->qp_state = IB_QPS_RTS;
		attr->sq_psn = IB_MAD_SEND_Q_PSN;
		ret = FUNC3(qp, attr, IB_QP_STATE | IB_QP_SQ_PSN);
		if (ret) {
			FUNC0(&port_priv->device->dev,
				"Couldn't change QP%d state to RTS: %d\n",
				i, ret);
			goto out;
		}
	}

	ret = FUNC4(port_priv->cq, IB_CQ_NEXT_COMP);
	if (ret) {
		FUNC0(&port_priv->device->dev,
			"Failed to request completion notification: %d\n",
			ret);
		goto out;
	}

	for (i = 0; i < IB_MAD_QPS_CORE; i++) {
		if (!port_priv->qp_info[i].qp)
			continue;

		ret = FUNC2(&port_priv->qp_info[i], NULL);
		if (ret) {
			FUNC0(&port_priv->device->dev,
				"Couldn't post receive WRs\n");
			goto out;
		}
	}
out:
	FUNC5(attr);
	return ret;
}