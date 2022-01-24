#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucmd ;
typedef  int u32 ;
struct mlx5_ib_resources {int /*<<< orphan*/  s1; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; int /*<<< orphan*/  s0; int /*<<< orphan*/  c0; struct ib_pd* p0; } ;
struct TYPE_23__ {int /*<<< orphan*/  event; } ;
struct mlx5_ib_qp_base {TYPE_16__ mqp; struct mlx5_ib_qp* container_mibqp; } ;
struct TYPE_32__ {int /*<<< orphan*/  buf_addr; } ;
struct TYPE_17__ {TYPE_9__ ubuffer; } ;
struct TYPE_24__ {struct mlx5_ib_qp_base base; } ;
struct TYPE_22__ {TYPE_10__ sq; TYPE_1__ rq; } ;
struct TYPE_31__ {int /*<<< orphan*/  dma; } ;
struct TYPE_28__ {scalar_t__ wqe_cnt; int /*<<< orphan*/  lock; } ;
struct TYPE_27__ {int wqe_shift; scalar_t__ wqe_cnt; int /*<<< orphan*/  lock; } ;
struct TYPE_25__ {struct mlx5_ib_qp_base base; } ;
struct mlx5_ib_qp {int flags; int wq_sig; int scat_cqe; scalar_t__ create_type; int /*<<< orphan*/  cq_recv_list; int /*<<< orphan*/  cq_send_list; int /*<<< orphan*/  qps_list; TYPE_15__ raw_packet_qp; TYPE_8__ db; TYPE_5__ sq; TYPE_4__ rq; int /*<<< orphan*/  port; int /*<<< orphan*/  has_rq; int /*<<< orphan*/  sq_signal_bits; int /*<<< orphan*/  mutex; TYPE_2__ trans_qp; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  reset_flow_resource_lock; int /*<<< orphan*/  qp_list; struct mlx5_core_dev* mdev; struct mlx5_ib_resources devr; } ;
struct mlx5_ib_create_qp_resp {int dummy; } ;
struct mlx5_ib_create_qp {int flags; scalar_t__ sq_wqe_count; int rq_wqe_shift; scalar_t__ rq_wqe_count; int /*<<< orphan*/  sq_buf_addr; } ;
struct mlx5_ib_cq {int /*<<< orphan*/  list_recv_qp; int /*<<< orphan*/  list_send_qp; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_udata {int /*<<< orphan*/  inlen; } ;
struct ib_qp_init_attr {int qp_type; int create_flags; scalar_t__ sq_sig_type; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  srq; int /*<<< orphan*/  xrcd; int /*<<< orphan*/  port_num; int /*<<< orphan*/  cap; scalar_t__ rwq_ind_tbl; } ;
struct ib_pd {TYPE_3__* uobject; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_30__ {int cqn; } ;
struct TYPE_29__ {int srqn; } ;
struct TYPE_26__ {int /*<<< orphan*/  context; } ;
struct TYPE_21__ {TYPE_7__ mcq; } ;
struct TYPE_20__ {int pdn; } ;
struct TYPE_19__ {TYPE_6__ msrq; } ;
struct TYPE_18__ {int xrcdn; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 int IB_QPT_RAW_PACKET ; 
 int IB_QPT_UD ; 
#define  IB_QPT_XRC_INI 129 
#define  IB_QPT_XRC_TGT 128 
 int IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK ; 
 int IB_QP_CREATE_CROSS_CHANNEL ; 
 int IB_QP_CREATE_IPOIB_UD_LSO ; 
 int IB_QP_CREATE_MANAGED_RECV ; 
 int IB_QP_CREATE_MANAGED_SEND ; 
 int IB_QP_CREATE_SCATTER_FCS ; 
 scalar_t__ IB_SIGNAL_ALL_WR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,struct ib_pd*) ; 
 int MLX5_CQE_VERSION_V1 ; 
 int MLX5_IB_DEFAULT_UIDX ; 
 int MLX5_IB_QPT_REG_UMR ; 
 int MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK ; 
 int MLX5_IB_QP_CAP_SCATTER_FCS ; 
 int MLX5_IB_QP_CROSS_CHANNEL ; 
 int MLX5_IB_QP_LSO ; 
 int MLX5_IB_QP_MANAGED_RECV ; 
 int MLX5_IB_QP_MANAGED_SEND ; 
 scalar_t__ MLX5_QP_EMPTY ; 
 int MLX5_QP_FLAG_SCATTER_CQE ; 
 int MLX5_QP_FLAG_SIGNATURE ; 
 scalar_t__ MLX5_QP_KERNEL ; 
 int MLX5_QP_PM_MIGRATED ; 
 scalar_t__ MLX5_QP_USER ; 
 int MLX5_REQ_SCAT_DATA32_CQE ; 
 int MLX5_REQ_SCAT_DATA64_CQE ; 
 int MLX5_RES_SCAT_DATA32_CQE ; 
 int MLX5_RES_SCAT_DATA64_CQE ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,struct ib_pd*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_WQE_CTRL_CQ_UPDATE ; 
 struct ib_pd* block_lb_mc ; 
 struct ib_pd* cd ; 
 struct ib_pd* cd_master ; 
 struct ib_pd* cd_slave_receive ; 
 struct ib_pd* cd_slave_send ; 
 struct ib_pd* cqe_version ; 
 struct ib_pd* cqn_rcv ; 
 struct ib_pd* cqn_snd ; 
 int FUNC6 (struct mlx5_ib_dev*,struct ib_qp_init_attr*,struct mlx5_ib_qp*,int**,int*,struct mlx5_ib_qp_base*) ; 
 int /*<<< orphan*/  create_qp_in ; 
 int FUNC7 (struct mlx5_ib_dev*,struct mlx5_ib_qp*,int*,struct ib_pd*) ; 
 int FUNC8 (struct mlx5_ib_dev*,struct mlx5_ib_qp*,struct ib_pd*,struct ib_qp_init_attr*,struct ib_udata*) ; 
 int FUNC9 (struct mlx5_ib_dev*,struct ib_pd*,struct mlx5_ib_qp*,struct ib_udata*,struct ib_qp_init_attr*,int**,struct mlx5_ib_create_qp_resp*,int*,struct mlx5_ib_qp_base*) ; 
 struct ib_pd* cs_req ; 
 struct ib_pd* cs_res ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_pd*,struct mlx5_ib_qp*,struct mlx5_ib_qp_base*) ; 
 struct ib_pd* eth_net_offloads ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_ib_cq**,struct mlx5_ib_cq**) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct mlx5_ib_create_qp*,int /*<<< orphan*/ ,int*) ; 
 int FUNC14 (struct mlx5_ib_qp*,struct ib_qp_init_attr*) ; 
 scalar_t__ FUNC15 (struct mlx5_ib_create_qp*,struct ib_udata*,int) ; 
 int FUNC16 (scalar_t__) ; 
 struct ib_pd* ipoib_ipoib_offloads ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 
 struct ib_pd* latency_sensitive ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ib_pd* log_max_qp_sz ; 
 struct ib_pd* log_rq_size ; 
 struct ib_pd* log_rq_stride ; 
 struct ib_pd* log_sq_size ; 
 int FUNC21 (struct mlx5_core_dev*,TYPE_16__*,int*,int) ; 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct mlx5_ib_dev*,char*,...) ; 
 int FUNC24 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx5_ib_cq*,struct mlx5_ib_cq*) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  mlx5_ib_qp_event ; 
 int /*<<< orphan*/  FUNC27 (struct mlx5_ib_cq*,struct mlx5_ib_cq*) ; 
 int* FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 struct ib_pd* no_sq ; 
 struct ib_pd* pm_state ; 
 int /*<<< orphan*/  FUNC30 (struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC31 (struct mlx5_ib_qp*,TYPE_15__*) ; 
 struct ib_pd* rq_type ; 
 int /*<<< orphan*/  scatter_fcs ; 
 int FUNC32 (struct mlx5_ib_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5_ib_qp*,struct mlx5_ib_create_qp*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ib_pd* srqn_rmpn ; 
 struct ib_pd* st ; 
 TYPE_14__* FUNC36 (int /*<<< orphan*/ ) ; 
 int FUNC37 (int) ; 
 TYPE_13__* FUNC38 (struct ib_pd*) ; 
 TYPE_12__* FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC41 (int /*<<< orphan*/ ) ; 
 struct ib_pd* ulp_stateless_offload_mode ; 
 struct ib_pd* user_index ; 
 struct ib_pd* wq_signature ; 
 struct ib_pd* xrcd ; 

__attribute__((used)) static int FUNC42(struct mlx5_ib_dev *dev, struct ib_pd *pd,
			    struct ib_qp_init_attr *init_attr,
			    struct ib_udata *udata, struct mlx5_ib_qp *qp)
{
	struct mlx5_ib_resources *devr = &dev->devr;
	int inlen = FUNC5(create_qp_in);
	struct mlx5_core_dev *mdev = dev->mdev;
	struct mlx5_ib_create_qp_resp resp;
	struct mlx5_ib_cq *send_cq;
	struct mlx5_ib_cq *recv_cq;
	unsigned long flags;
	u32 uidx = MLX5_IB_DEFAULT_UIDX;
	struct mlx5_ib_create_qp ucmd;
	struct mlx5_ib_qp_base *base;
	void *qpc;
	u32 *in;
	int err;

	base = init_attr->qp_type == IB_QPT_RAW_PACKET ?
	       &qp->raw_packet_qp.rq.base :
	       &qp->trans_qp.base;

	if (init_attr->qp_type != IB_QPT_RAW_PACKET)
		FUNC26(qp);

	FUNC29(&qp->mutex);
	FUNC33(&qp->sq.lock);
	FUNC33(&qp->rq.lock);

	if (init_attr->rwq_ind_tbl) {
		if (!udata)
			return -ENOSYS;

		err = FUNC8(dev, qp, pd, init_attr, udata);
		return err;
	}

	if (init_attr->create_flags & IB_QP_CREATE_BLOCK_MULTICAST_LOOPBACK) {
		if (!FUNC2(mdev, block_lb_mc)) {
			FUNC23(dev, "block multicast loopback isn't supported\n");
			return -EINVAL;
		} else {
			qp->flags |= MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK;
		}
	}

	if (init_attr->create_flags &
			(IB_QP_CREATE_CROSS_CHANNEL |
			 IB_QP_CREATE_MANAGED_SEND |
			 IB_QP_CREATE_MANAGED_RECV)) {
		if (!FUNC2(mdev, cd)) {
			FUNC23(dev, "cross-channel isn't supported\n");
			return -EINVAL;
		}
		if (init_attr->create_flags & IB_QP_CREATE_CROSS_CHANNEL)
			qp->flags |= MLX5_IB_QP_CROSS_CHANNEL;
		if (init_attr->create_flags & IB_QP_CREATE_MANAGED_SEND)
			qp->flags |= MLX5_IB_QP_MANAGED_SEND;
		if (init_attr->create_flags & IB_QP_CREATE_MANAGED_RECV)
			qp->flags |= MLX5_IB_QP_MANAGED_RECV;
	}

	if (init_attr->qp_type == IB_QPT_UD &&
	    (init_attr->create_flags & IB_QP_CREATE_IPOIB_UD_LSO))
		if (!FUNC2(mdev, ipoib_ipoib_offloads)) {
			FUNC23(dev, "ipoib UD lso qp isn't supported\n");
			return -EOPNOTSUPP;
		}

	if (init_attr->create_flags & IB_QP_CREATE_SCATTER_FCS) {
		if (init_attr->qp_type != IB_QPT_RAW_PACKET) {
			FUNC23(dev, "Scatter FCS is supported only for Raw Packet QPs");
			return -EOPNOTSUPP;
		}
		if (!FUNC2(dev->mdev, eth_net_offloads) ||
		    !FUNC1(dev->mdev, scatter_fcs)) {
			FUNC23(dev, "Scatter FCS isn't supported\n");
			return -EOPNOTSUPP;
		}
		qp->flags |= MLX5_IB_QP_CAP_SCATTER_FCS;
	}

	if (init_attr->sq_sig_type == IB_SIGNAL_ALL_WR)
		qp->sq_signal_bits = MLX5_WQE_CTRL_CQ_UPDATE;

	if (pd && pd->uobject) {
		if (FUNC15(&ucmd, udata, sizeof(ucmd))) {
			FUNC23(dev, "copy failed\n");
			return -EFAULT;
		}

		err = FUNC13(FUNC40(pd->uobject->context),
					&ucmd, udata->inlen, &uidx);
		if (err)
			return err;

		qp->wq_sig = !!(ucmd.flags & MLX5_QP_FLAG_SIGNATURE);
		qp->scat_cqe = !!(ucmd.flags & MLX5_QP_FLAG_SCATTER_CQE);
	} else {
		qp->wq_sig = !!wq_signature;
	}

	qp->has_rq = FUNC30(init_attr);
	err = FUNC32(dev, &init_attr->cap, qp->has_rq,
			  qp, (pd && pd->uobject) ? &ucmd : NULL);
	if (err) {
		FUNC23(dev, "err %d\n", err);
		return err;
	}

	if (pd) {
		if (pd->uobject) {
			__u32 max_wqes =
				1 << FUNC2(mdev, log_max_qp_sz);
			FUNC23(dev, "requested sq_wqe_count (%d)\n", ucmd.sq_wqe_count);
			if (ucmd.rq_wqe_shift != qp->rq.wqe_shift ||
			    ucmd.rq_wqe_count != qp->rq.wqe_cnt) {
				FUNC23(dev, "invalid rq params\n");
				return -EINVAL;
			}
			if (ucmd.sq_wqe_count > max_wqes) {
				FUNC23(dev, "requested sq_wqe_count (%d) > max allowed (%d)\n",
					    ucmd.sq_wqe_count, max_wqes);
				return -EINVAL;
			}
			if (init_attr->create_flags &
			    FUNC22()) {
				FUNC23(dev, "user-space is not allowed to create UD QPs spoofing as QP1\n");
				return -EINVAL;
			}
			err = FUNC9(dev, pd, qp, udata, init_attr, &in,
					     &resp, &inlen, base);
			if (err)
				FUNC23(dev, "err %d\n", err);
		} else {
			err = FUNC6(dev, init_attr, qp, &in, &inlen,
					       base);
			if (err)
				FUNC23(dev, "err %d\n", err);
		}

		if (err)
			return err;
	} else {
		in = FUNC28(inlen);
		if (!in)
			return -ENOMEM;

		qp->create_type = MLX5_QP_EMPTY;
	}

	if (FUNC18(init_attr->qp_type))
		qp->port = init_attr->port_num;

	qpc = FUNC0(create_qp_in, in, qpc);

	FUNC3(qpc, qpc, st, FUNC37(init_attr->qp_type));
	FUNC3(qpc, qpc, pm_state, MLX5_QP_PM_MIGRATED);

	if (init_attr->qp_type != MLX5_IB_QPT_REG_UMR)
		FUNC3(qpc, qpc, pd, FUNC38(pd ? pd : devr->p0)->pdn);
	else
		FUNC3(qpc, qpc, latency_sensitive, 1);


	if (qp->wq_sig)
		FUNC3(qpc, qpc, wq_signature, 1);

	if (qp->flags & MLX5_IB_QP_BLOCK_MULTICAST_LOOPBACK)
		FUNC3(qpc, qpc, block_lb_mc, 1);

	if (qp->flags & MLX5_IB_QP_CROSS_CHANNEL)
		FUNC3(qpc, qpc, cd_master, 1);
	if (qp->flags & MLX5_IB_QP_MANAGED_SEND)
		FUNC3(qpc, qpc, cd_slave_send, 1);
	if (qp->flags & MLX5_IB_QP_MANAGED_RECV)
		FUNC3(qpc, qpc, cd_slave_receive, 1);

	if (qp->scat_cqe && FUNC17(init_attr->qp_type)) {
		int rcqe_sz;
		int scqe_sz;

		rcqe_sz = FUNC24(dev, init_attr->recv_cq);
		scqe_sz = FUNC24(dev, init_attr->send_cq);

		if (rcqe_sz == 128)
			FUNC3(qpc, qpc, cs_res, MLX5_RES_SCAT_DATA64_CQE);
		else
			FUNC3(qpc, qpc, cs_res, MLX5_RES_SCAT_DATA32_CQE);

		if (init_attr->sq_sig_type == IB_SIGNAL_ALL_WR) {
			if (scqe_sz == 128)
				FUNC3(qpc, qpc, cs_req, MLX5_REQ_SCAT_DATA64_CQE);
			else
				FUNC3(qpc, qpc, cs_req, MLX5_REQ_SCAT_DATA32_CQE);
		}
	}

	if (qp->rq.wqe_cnt) {
		FUNC3(qpc, qpc, log_rq_stride, qp->rq.wqe_shift - 4);
		FUNC3(qpc, qpc, log_rq_size, FUNC16(qp->rq.wqe_cnt));
	}

	FUNC3(qpc, qpc, rq_type, FUNC14(qp, init_attr));

	if (qp->sq.wqe_cnt)
		FUNC3(qpc, qpc, log_sq_size, FUNC16(qp->sq.wqe_cnt));
	else
		FUNC3(qpc, qpc, no_sq, 1);

	/* Set default resources */
	switch (init_attr->qp_type) {
	case IB_QPT_XRC_TGT:
		FUNC3(qpc, qpc, cqn_rcv, FUNC36(devr->c0)->mcq.cqn);
		FUNC3(qpc, qpc, cqn_snd, FUNC36(devr->c0)->mcq.cqn);
		FUNC3(qpc, qpc, srqn_rmpn, FUNC39(devr->s0)->msrq.srqn);
		FUNC3(qpc, qpc, xrcd, FUNC41(init_attr->xrcd)->xrcdn);
		break;
	case IB_QPT_XRC_INI:
		FUNC3(qpc, qpc, cqn_rcv, FUNC36(devr->c0)->mcq.cqn);
		FUNC3(qpc, qpc, xrcd, FUNC41(devr->x1)->xrcdn);
		FUNC3(qpc, qpc, srqn_rmpn, FUNC39(devr->s0)->msrq.srqn);
		break;
	default:
		if (init_attr->srq) {
			FUNC3(qpc, qpc, xrcd, FUNC41(devr->x0)->xrcdn);
			FUNC3(qpc, qpc, srqn_rmpn, FUNC39(init_attr->srq)->msrq.srqn);
		} else {
			FUNC3(qpc, qpc, xrcd, FUNC41(devr->x1)->xrcdn);
			FUNC3(qpc, qpc, srqn_rmpn, FUNC39(devr->s1)->msrq.srqn);
		}
	}

	if (init_attr->send_cq)
		FUNC3(qpc, qpc, cqn_snd, FUNC36(init_attr->send_cq)->mcq.cqn);

	if (init_attr->recv_cq)
		FUNC3(qpc, qpc, cqn_rcv, FUNC36(init_attr->recv_cq)->mcq.cqn);

	FUNC4(qpc, qpc, dbr_addr, qp->db.dma);

	/* 0xffffff means we ask to work with cqe version 0 */
	if (FUNC2(mdev, cqe_version) == MLX5_CQE_VERSION_V1)
		FUNC3(qpc, qpc, user_index, uidx);

	/* we use IB_QP_CREATE_IPOIB_UD_LSO to indicates ipoib qp */
	if (init_attr->qp_type == IB_QPT_UD &&
	    (init_attr->create_flags & IB_QP_CREATE_IPOIB_UD_LSO)) {
		FUNC3(qpc, qpc, ulp_stateless_offload_mode, 1);
		qp->flags |= MLX5_IB_QP_LSO;
	}

	if (init_attr->qp_type == IB_QPT_RAW_PACKET) {
		qp->raw_packet_qp.sq.ubuffer.buf_addr = ucmd.sq_buf_addr;
		FUNC31(qp, &qp->raw_packet_qp);
		err = FUNC7(dev, qp, in, pd);
	} else {
		err = FUNC21(dev->mdev, &base->mqp, in, inlen);
	}

	if (err) {
		FUNC23(dev, "create qp failed\n");
		goto err_create;
	}

	FUNC19(in);

	base->container_mibqp = qp;
	base->mqp.event = mlx5_ib_qp_event;

	FUNC12(init_attr->qp_type, init_attr->send_cq, init_attr->recv_cq,
		&send_cq, &recv_cq);
	FUNC34(&dev->reset_flow_resource_lock, flags);
	FUNC25(send_cq, recv_cq);
	/* Maintain device to QPs access, needed for further handling via reset
	 * flow
	 */
	FUNC20(&qp->qps_list, &dev->qp_list);
	/* Maintain CQ to QPs access, needed for further handling via reset flow
	 */
	if (send_cq)
		FUNC20(&qp->cq_send_list, &send_cq->list_send_qp);
	if (recv_cq)
		FUNC20(&qp->cq_recv_list, &recv_cq->list_recv_qp);
	FUNC27(send_cq, recv_cq);
	FUNC35(&dev->reset_flow_resource_lock, flags);

	return 0;

err_create:
	if (qp->create_type == MLX5_QP_USER)
		FUNC11(pd, qp, base);
	else if (qp->create_type == MLX5_QP_KERNEL)
		FUNC10(dev, qp);

	FUNC19(in);
	return err;
}