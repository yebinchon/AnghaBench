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
struct mlx5_modify_raw_qp_param {int set_mask; int rq_q_ctr_id; } ;
struct TYPE_4__ {int qpn; } ;
struct TYPE_5__ {TYPE_1__ mqp; } ;
struct mlx5_ib_rq {int state; TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; TYPE_3__ ib_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_MODIFY_RQ_COUNTER_SET_ID ; 
 int MLX5_RAW_QP_MOD_SET_RQ_Q_CTR_ID ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  counter_set_id ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  modify_bitmask ; 
 int /*<<< orphan*/  modify_rq_counters_set_id ; 
 void* modify_rq_in ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rq_state ; 
 int /*<<< orphan*/  rqn ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static int FUNC9(struct mlx5_ib_dev *dev,
				   struct mlx5_ib_rq *rq, int new_state,
				   const struct mlx5_modify_raw_qp_param *raw_qp_param)
{
	void *in;
	void *rqc;
	int inlen;
	int err;

	inlen = FUNC4(modify_rq_in);
	in = FUNC7(inlen);
	if (!in)
		return -ENOMEM;

	FUNC2(modify_rq_in, in, rqn, rq->base.mqp.qpn);
	FUNC2(modify_rq_in, in, rq_state, rq->state);

	rqc = FUNC0(modify_rq_in, in, ctx);
	FUNC2(rqc, rqc, state, new_state);

	if (raw_qp_param->set_mask & MLX5_RAW_QP_MOD_SET_RQ_Q_CTR_ID) {
		if (FUNC1(dev->mdev, modify_rq_counters_set_id)) {
			FUNC3(modify_rq_in, in, modify_bitmask,
				   MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_MODIFY_RQ_COUNTER_SET_ID);
			FUNC2(rqc, rqc, counter_set_id, raw_qp_param->rq_q_ctr_id);
		} else
			FUNC8("%s: RAW PACKET QP counters are not supported on current FW\n",
				     dev->ib_dev.name);
	}

	err = FUNC6(dev->mdev, in, inlen);
	if (err)
		goto out;

	rq->state = new_state;

out:
	FUNC5(in);
	return err;
}