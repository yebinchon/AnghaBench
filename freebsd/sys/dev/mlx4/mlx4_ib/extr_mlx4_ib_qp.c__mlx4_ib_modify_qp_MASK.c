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
struct mlx4_ib_qp {int state; int port; int /*<<< orphan*/  mutex; } ;
struct mlx4_ib_dev {int num_ports; TYPE_2__* dev; int /*<<< orphan*/  ib_dev; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; int port_num; scalar_t__ pkey_index; scalar_t__ max_rd_atomic; scalar_t__ max_dest_rd_atomic; } ;
struct ib_qp {int qp_type; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  device; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_3__ {scalar_t__* pkey_table_len; scalar_t__ max_qp_init_rdma; scalar_t__ max_qp_dest_rdma; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_LINK_LAYER_ETHERNET ; 
 int IB_LINK_LAYER_UNSPECIFIED ; 
 int IB_QPS_INIT ; 
 int IB_QPS_RESET ; 
 int IB_QPT_RAW_PACKET ; 
 int IB_QPT_RC ; 
 int IB_QPT_UC ; 
 int IB_QPT_UD ; 
 int IB_QPT_XRC_INI ; 
 int IB_QP_CUR_STATE ; 
 int IB_QP_MAX_DEST_RD_ATOMIC ; 
 int IB_QP_MAX_QP_RD_ATOMIC ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int FUNC0 (struct ib_qp*,struct ib_qp_attr*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int) ; 
 int FUNC2 (struct mlx4_ib_dev*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct mlx4_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_qp* FUNC9 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC10(struct ib_qp *ibqp, struct ib_qp_attr *attr,
			      int attr_mask, struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC8(ibqp->device);
	struct mlx4_ib_qp *qp = FUNC9(ibqp);
	enum ib_qp_state cur_state, new_state;
	int err = -EINVAL;
	int ll;
	FUNC4(&qp->mutex);

	cur_state = attr_mask & IB_QP_CUR_STATE ? attr->cur_qp_state : qp->state;
	new_state = attr_mask & IB_QP_STATE ? attr->qp_state : cur_state;

	if (cur_state == new_state && cur_state == IB_QPS_RESET) {
		ll = IB_LINK_LAYER_UNSPECIFIED;
	} else {
		int port = attr_mask & IB_QP_PORT ? attr->port_num : qp->port;
		ll = FUNC7(&dev->ib_dev, port);
	}

	if (!FUNC1(cur_state, new_state, ibqp->qp_type,
				attr_mask, ll)) {
		FUNC6("qpn 0x%x: invalid attribute mask specified "
			 "for transition %d to %d. qp_type %d,"
			 " attr_mask 0x%x\n",
			 ibqp->qp_num, cur_state, new_state,
			 ibqp->qp_type, attr_mask);
		goto out;
	}

	if (FUNC3(dev->dev) && (attr_mask & IB_QP_PORT)) {
		if ((cur_state == IB_QPS_RESET) && (new_state == IB_QPS_INIT)) {
			if ((ibqp->qp_type == IB_QPT_RC) ||
			    (ibqp->qp_type == IB_QPT_UD) ||
			    (ibqp->qp_type == IB_QPT_UC) ||
			    (ibqp->qp_type == IB_QPT_RAW_PACKET) ||
			    (ibqp->qp_type == IB_QPT_XRC_INI)) {
				attr->port_num = FUNC2(dev);
			}
		} else {
			/* no sense in changing port_num
			 * when ports are bonded */
			attr_mask &= ~IB_QP_PORT;
		}
	}

	if ((attr_mask & IB_QP_PORT) &&
	    (attr->port_num == 0 || attr->port_num > dev->num_ports)) {
		FUNC6("qpn 0x%x: invalid port number (%d) specified "
			 "for transition %d to %d. qp_type %d\n",
			 ibqp->qp_num, attr->port_num, cur_state,
			 new_state, ibqp->qp_type);
		goto out;
	}

	if ((attr_mask & IB_QP_PORT) && (ibqp->qp_type == IB_QPT_RAW_PACKET) &&
	    (FUNC7(&dev->ib_dev, attr->port_num) !=
	     IB_LINK_LAYER_ETHERNET))
		goto out;

	if (attr_mask & IB_QP_PKEY_INDEX) {
		int p = attr_mask & IB_QP_PORT ? attr->port_num : qp->port;
		if (attr->pkey_index >= dev->dev->caps.pkey_table_len[p]) {
			FUNC6("qpn 0x%x: invalid pkey index (%d) specified "
				 "for transition %d to %d. qp_type %d\n",
				 ibqp->qp_num, attr->pkey_index, cur_state,
				 new_state, ibqp->qp_type);
			goto out;
		}
	}

	if (attr_mask & IB_QP_MAX_QP_RD_ATOMIC &&
	    attr->max_rd_atomic > dev->dev->caps.max_qp_init_rdma) {
		FUNC6("qpn 0x%x: max_rd_atomic (%d) too large. "
			 "Transition %d to %d. qp_type %d\n",
			 ibqp->qp_num, attr->max_rd_atomic, cur_state,
			 new_state, ibqp->qp_type);
		goto out;
	}

	if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC &&
	    attr->max_dest_rd_atomic > dev->dev->caps.max_qp_dest_rdma) {
		FUNC6("qpn 0x%x: max_dest_rd_atomic (%d) too large. "
			 "Transition %d to %d. qp_type %d\n",
			 ibqp->qp_num, attr->max_dest_rd_atomic, cur_state,
			 new_state, ibqp->qp_type);
		goto out;
	}

	if (cur_state == new_state && cur_state == IB_QPS_RESET) {
		err = 0;
		goto out;
	}

	err = FUNC0(ibqp, attr, attr_mask, cur_state, new_state);

	if (FUNC3(dev->dev) && (attr_mask & IB_QP_PORT))
		attr->port_num = 1;

out:
	FUNC5(&qp->mutex);
	return err;
}