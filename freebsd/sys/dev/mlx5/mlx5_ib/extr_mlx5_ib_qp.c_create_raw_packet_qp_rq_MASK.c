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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mqp; struct mlx5_ib_qp* container_mibqp; } ;
struct mlx5_ib_rq {TYPE_1__ base; } ;
struct mlx5_ib_qp {int flags; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
typedef  void __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,void*) ; 
 int FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int MLX5_IB_QP_CAP_SCATTER_FCS ; 
 int MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE ; 
 int MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*) ; 
 int MLX5_WQ_TYPE_CYCLIC ; 
 int /*<<< orphan*/  cqn ; 
 int /*<<< orphan*/  cqn_rcv ; 
 void* create_qp_in ; 
 void* create_rq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  end_padding_mode ; 
 int /*<<< orphan*/  flush_in_error_en ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  log_rq_size ; 
 int /*<<< orphan*/  log_rq_stride ; 
 int /*<<< orphan*/  log_wq_pg_sz ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  mem_rq_type ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  page_offset ; 
 int /*<<< orphan*/  pd ; 
 void* qpc ; 
 int /*<<< orphan*/  scatter_fcs ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  user_index ; 
 int /*<<< orphan*/  vlan_strip_disable ; 
 int /*<<< orphan*/  wq_type ; 

__attribute__((used)) static int FUNC11(struct mlx5_ib_dev *dev,
				   struct mlx5_ib_rq *rq, void *qpin)
{
	struct mlx5_ib_qp *mqp = rq->base.container_mibqp;
	__be64 *pas;
	__be64 *qp_pas;
	void *in;
	void *rqc;
	void *wq;
	void *qpc = FUNC0(create_qp_in, qpin, qpc);
	int inlen;
	int err;
	u32 rq_pas_size = FUNC6(qpc);

	inlen = FUNC5(create_rq_in) + rq_pas_size;
	in = FUNC10(inlen);
	if (!in)
		return -ENOMEM;

	rqc = FUNC0(create_rq_in, in, ctx);
	FUNC3(rqc, rqc, vlan_strip_disable, 1);
	FUNC3(rqc, rqc, mem_rq_type, MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE);
	FUNC3(rqc, rqc, state, MLX5_RQC_STATE_RST);
	FUNC3(rqc, rqc, flush_in_error_en, 1);
	FUNC3(rqc, rqc, user_index, FUNC1(qpc, qpc, user_index));
	FUNC3(rqc, rqc, cqn, FUNC1(qpc, qpc, cqn_rcv));

	if (mqp->flags & MLX5_IB_QP_CAP_SCATTER_FCS)
		FUNC3(rqc, rqc, scatter_fcs, 1);

	wq = FUNC0(rqc, rqc, wq);
	FUNC3(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
	FUNC3(wq, wq, end_padding_mode,
		 FUNC1(qpc, qpc, end_padding_mode));
	FUNC3(wq, wq, page_offset, FUNC1(qpc, qpc, page_offset));
	FUNC3(wq, wq, pd, FUNC1(qpc, qpc, pd));
	FUNC4(wq, wq, dbr_addr, FUNC2(qpc, qpc, dbr_addr));
	FUNC3(wq, wq, log_wq_stride, FUNC1(qpc, qpc, log_rq_stride) + 4);
	FUNC3(wq, wq, log_wq_pg_sz, FUNC1(qpc, qpc, log_page_size));
	FUNC3(wq, wq, log_wq_sz, FUNC1(qpc, qpc, log_rq_size));

	pas = (__be64 *)FUNC0(wq, wq, pas);
	qp_pas = (__be64 *)FUNC0(create_qp_in, qpin, pas);
	FUNC8(pas, qp_pas, rq_pas_size);

	err = FUNC9(dev->mdev, in, inlen, &rq->base.mqp);

	FUNC7(in);

	return err;
}