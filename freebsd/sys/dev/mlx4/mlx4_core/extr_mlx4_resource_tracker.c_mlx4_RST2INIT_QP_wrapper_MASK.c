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
struct res_srq {int /*<<< orphan*/  ref_count; } ;
struct res_qp {int local_qpn; int qpc_flags; struct res_srq* srq; struct res_srq* scq; struct res_srq* rcq; struct res_srq* mtt; scalar_t__ feup; scalar_t__ vlan_index; scalar_t__ pri_path_fl; scalar_t__ fvl_rx; scalar_t__ vlan_control; scalar_t__ param3; scalar_t__ sched_queue; } ;
struct res_mtt {int /*<<< orphan*/  ref_count; } ;
struct res_cq {int /*<<< orphan*/  ref_count; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_qp_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  local_qpn; } ;
struct TYPE_2__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_CQ ; 
 int /*<<< orphan*/  RES_MTT ; 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  RES_QP_HW ; 
 int /*<<< orphan*/  RES_SRQ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int,int,int,struct res_srq*) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_srq**) ; 
 int FUNC6 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlx4_qp_context*) ; 
 int FUNC9 (struct mlx4_qp_context*) ; 
 int FUNC10 (struct mlx4_qp_context*) ; 
 int FUNC11 (struct mlx4_qp_context*) ; 
 int FUNC12 (struct mlx4_qp_context*) ; 
 int FUNC13 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_qp**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ; 

int FUNC17(struct mlx4_dev *dev, int slave,
			     struct mlx4_vhcr *vhcr,
			     struct mlx4_cmd_mailbox *inbox,
			     struct mlx4_cmd_mailbox *outbox,
			     struct mlx4_cmd_info *cmd)
{
	int err;
	int qpn = vhcr->in_modifier & 0x7fffff;
	struct res_mtt *mtt;
	struct res_qp *qp;
	struct mlx4_qp_context *qpc = inbox->buf + 8;
	int mtt_base = FUNC8(qpc) / dev->caps.mtt_entry_sz;
	int mtt_size = FUNC9(qpc);
	struct res_cq *rcq;
	struct res_cq *scq;
	int rcqn = FUNC10(qpc);
	int scqn = FUNC11(qpc);
	u32 srqn = FUNC12(qpc) & 0xffffff;
	int use_srq = (FUNC12(qpc) >> 24) & 1;
	struct res_srq *srq;
	int local_qpn = FUNC3(qpc->local_qpn) & 0xffffff;

	err = FUNC1(dev, slave, qpc, inbox);
	if (err)
		return err;

	err = FUNC13(dev, slave, qpn, RES_QP_HW, &qp, 0);
	if (err)
		return err;
	qp->local_qpn = local_qpn;
	qp->sched_queue = 0;
	qp->param3 = 0;
	qp->vlan_control = 0;
	qp->fvl_rx = 0;
	qp->pri_path_fl = 0;
	qp->vlan_index = 0;
	qp->feup = 0;
	qp->qpc_flags = FUNC3(qpc->flags);

	err = FUNC5(dev, slave, mtt_base, RES_MTT, &mtt);
	if (err)
		goto ex_abort;

	err = FUNC4(dev, slave, mtt_base, mtt_size, mtt);
	if (err)
		goto ex_put_mtt;

	err = FUNC5(dev, slave, rcqn, RES_CQ, &rcq);
	if (err)
		goto ex_put_mtt;

	if (scqn != rcqn) {
		err = FUNC5(dev, slave, scqn, RES_CQ, &scq);
		if (err)
			goto ex_put_rcq;
	} else
		scq = rcq;

	if (use_srq) {
		err = FUNC5(dev, slave, srqn, RES_SRQ, &srq);
		if (err)
			goto ex_put_scq;
	}

	FUNC0(dev, vhcr, qpc);
	FUNC16(dev, slave, inbox);
	err = FUNC6(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto ex_put_srq;
	FUNC2(&mtt->ref_count);
	qp->mtt = mtt;
	FUNC2(&rcq->ref_count);
	qp->rcq = rcq;
	FUNC2(&scq->ref_count);
	qp->scq = scq;

	if (scqn != rcqn)
		FUNC7(dev, slave, scqn, RES_CQ);

	if (use_srq) {
		FUNC2(&srq->ref_count);
		FUNC7(dev, slave, srqn, RES_SRQ);
		qp->srq = srq;
	}
	FUNC7(dev, slave, rcqn, RES_CQ);
	FUNC7(dev, slave, mtt_base, RES_MTT);
	FUNC15(dev, slave, RES_QP, qpn);

	return 0;

ex_put_srq:
	if (use_srq)
		FUNC7(dev, slave, srqn, RES_SRQ);
ex_put_scq:
	if (scqn != rcqn)
		FUNC7(dev, slave, scqn, RES_CQ);
ex_put_rcq:
	FUNC7(dev, slave, rcqn, RES_CQ);
ex_put_mtt:
	FUNC7(dev, slave, mtt_base, RES_MTT);
ex_abort:
	FUNC14(dev, slave, RES_QP, qpn);

	return err;
}