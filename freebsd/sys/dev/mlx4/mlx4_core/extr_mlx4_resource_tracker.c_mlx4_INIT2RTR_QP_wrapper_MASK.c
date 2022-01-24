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
typedef  void* u8 ;
struct TYPE_4__ {scalar_t__ from_state; } ;
struct res_qp {void* feup; void* vlan_index; void* pri_path_fl; void* fvl_rx; void* vlan_control; int /*<<< orphan*/  param3; void* sched_queue; TYPE_2__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {void* sched_queue; void* feup; void* vlan_index; void* fl; void* fvl_rx; void* vlan_control; } ;
struct mlx4_qp_context {TYPE_1__ pri_path; int /*<<< orphan*/  param3; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  QP_TRANS_INIT2RTR ; 
 int /*<<< orphan*/  RES_QP ; 
 scalar_t__ RES_QP_HW ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_qp**) ; 
 int FUNC3 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ; 
 int FUNC8 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int,int) ; 
 int FUNC9 (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct mlx4_dev *dev, int slave,
			     struct mlx4_vhcr *vhcr,
			     struct mlx4_cmd_mailbox *inbox,
			     struct mlx4_cmd_mailbox *outbox,
			     struct mlx4_cmd_info *cmd)
{
	int err;
	struct mlx4_qp_context *qpc = inbox->buf + 8;
	int qpn = vhcr->in_modifier & 0x7fffff;
	struct res_qp *qp;
	u8 orig_sched_queue;
	__be32	orig_param3 = qpc->param3;
	u8 orig_vlan_control = qpc->pri_path.vlan_control;
	u8 orig_fvl_rx = qpc->pri_path.fvl_rx;
	u8 orig_pri_path_fl = qpc->pri_path.fl;
	u8 orig_vlan_index = qpc->pri_path.vlan_index;
	u8 orig_feup = qpc->pri_path.feup;

	err = FUNC1(dev, slave, qpc, inbox);
	if (err)
		return err;
	err = FUNC9(dev, vhcr, inbox, QP_TRANS_INIT2RTR, slave);
	if (err)
		return err;

	if (FUNC5(dev, slave, qpc, inbox))
		return -EINVAL;

	FUNC7(dev, slave, inbox);
	FUNC6(dev, inbox, (u8)slave);
	FUNC0(dev, vhcr, qpc);
	orig_sched_queue = qpc->pri_path.sched_queue;

	err = FUNC2(dev, slave, qpn, RES_QP, &qp);
	if (err)
		return err;
	if (qp->com.from_state != RES_QP_HW) {
		err = -EBUSY;
		goto out;
	}

	err = FUNC8(dev, inbox, slave, qpn);
	if (err)
		goto out;

	err = FUNC3(dev, slave, vhcr, inbox, outbox, cmd);
out:
	/* if no error, save sched queue value passed in by VF. This is
	 * essentially the QOS value provided by the VF. This will be useful
	 * if we allow dynamic changes from VST back to VGT
	 */
	if (!err) {
		qp->sched_queue = orig_sched_queue;
		qp->param3	= orig_param3;
		qp->vlan_control = orig_vlan_control;
		qp->fvl_rx	=  orig_fvl_rx;
		qp->pri_path_fl = orig_pri_path_fl;
		qp->vlan_index  = orig_vlan_index;
		qp->feup	= orig_feup;
	}
	FUNC4(dev, slave, qpn, RES_QP);
	return err;
}