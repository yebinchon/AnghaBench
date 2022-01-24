#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_ib_qp {int state; int port; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int (* get_link_layer ) (TYPE_2__*,int) ;} ;
struct mlx5_ib_dev {TYPE_3__* mdev; int /*<<< orphan*/  num_ports; TYPE_2__ ib_dev; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int cur_qp_state; int qp_state; int port_num; scalar_t__ pkey_index; int max_rd_atomic; int max_dest_rd_atomic; } ;
struct ib_qp {int qp_type; scalar_t__ rwq_ind_tbl; int /*<<< orphan*/  device; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_6__ {TYPE_1__* port_caps; } ;
struct TYPE_4__ {scalar_t__ pkey_table_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int IB_LINK_LAYER_UNSPECIFIED ; 
 int IB_QPS_RESET ; 
 int IB_QPT_GSI ; 
 int IB_QP_CUR_STATE ; 
 int IB_QP_MAX_DEST_RD_ATOMIC ; 
 int IB_QP_MAX_QP_RD_ATOMIC ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int MLX5_IB_QPT_HW_GSI ; 
 int MLX5_IB_QPT_REG_UMR ; 
 int FUNC1 (struct ib_qp*,struct ib_qp_attr*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  log_max_ra_req_qp ; 
 int /*<<< orphan*/  log_max_ra_res_qp ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int,...) ; 
 int FUNC4 (struct ib_qp*,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_ports ; 
 int FUNC7 (TYPE_2__*,int) ; 
 struct mlx5_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_qp* FUNC9 (struct ib_qp*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct ib_qp *ibqp, struct ib_qp_attr *attr,
		      int attr_mask, struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC8(ibqp->device);
	struct mlx5_ib_qp *qp = FUNC9(ibqp);
	enum ib_qp_type qp_type;
	enum ib_qp_state cur_state, new_state;
	int err = -EINVAL;
	int port;
	enum rdma_link_layer ll = IB_LINK_LAYER_UNSPECIFIED;

	if (ibqp->rwq_ind_tbl)
		return -ENOSYS;

	if (FUNC10(ibqp->qp_type == IB_QPT_GSI))
		return FUNC4(ibqp, attr, attr_mask);

	qp_type = (FUNC10(ibqp->qp_type == MLX5_IB_QPT_HW_GSI)) ?
		IB_QPT_GSI : ibqp->qp_type;

	FUNC5(&qp->mutex);

	cur_state = attr_mask & IB_QP_CUR_STATE ? attr->cur_qp_state : qp->state;
	new_state = attr_mask & IB_QP_STATE ? attr->qp_state : cur_state;

	if (!(cur_state == new_state && cur_state == IB_QPS_RESET)) {
		port = attr_mask & IB_QP_PORT ? attr->port_num : qp->port;
		ll = dev->ib_dev.get_link_layer(&dev->ib_dev, port);
	}

	if (qp_type != MLX5_IB_QPT_REG_UMR &&
	    !FUNC2(cur_state, new_state, qp_type, attr_mask, ll)) {
		FUNC3(dev, "invalid QP state transition from %d to %d, qp_type %d, attr_mask 0x%x\n",
			    cur_state, new_state, ibqp->qp_type, attr_mask);
		goto out;
	}

	if ((attr_mask & IB_QP_PORT) &&
	    (attr->port_num == 0 ||
	     attr->port_num > FUNC0(dev->mdev, num_ports))) {
		FUNC3(dev, "invalid port number %d. number of ports is %d\n",
			    attr->port_num, dev->num_ports);
		goto out;
	}

	if (attr_mask & IB_QP_PKEY_INDEX) {
		port = attr_mask & IB_QP_PORT ? attr->port_num : qp->port;
		if (attr->pkey_index >=
		    dev->mdev->port_caps[port - 1].pkey_table_len) {
			FUNC3(dev, "invalid pkey index %d\n",
				    attr->pkey_index);
			goto out;
		}
	}

	if (attr_mask & IB_QP_MAX_QP_RD_ATOMIC &&
	    attr->max_rd_atomic >
	    (1 << FUNC0(dev->mdev, log_max_ra_res_qp))) {
		FUNC3(dev, "invalid max_rd_atomic value %d\n",
			    attr->max_rd_atomic);
		goto out;
	}

	if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC &&
	    attr->max_dest_rd_atomic >
	    (1 << FUNC0(dev->mdev, log_max_ra_req_qp))) {
		FUNC3(dev, "invalid max_dest_rd_atomic value %d\n",
			    attr->max_dest_rd_atomic);
		goto out;
	}

	if (cur_state == new_state && cur_state == IB_QPS_RESET) {
		err = 0;
		goto out;
	}

	err = FUNC1(ibqp, attr, attr_mask, cur_state, new_state);

out:
	FUNC6(&qp->mutex);
	return err;
}