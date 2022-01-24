#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct res_qp {int /*<<< orphan*/  ref_count; scalar_t__ mirr_mbox; scalar_t__ mirr_rule_id; int /*<<< orphan*/  mirr_mbox_size; } ;
struct res_fs_rule {int /*<<< orphan*/  ref_count; scalar_t__ mirr_mbox; scalar_t__ mirr_rule_id; int /*<<< orphan*/  mirr_mbox_size; } ;
struct mlx4_vhcr {int in_modifier; int out_param; } ;
struct mlx4_resource_tracker {TYPE_3__* slave_list; } ;
struct TYPE_5__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_6__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_net_trans_rule_hw_eth {int dummy; } ;
struct mlx4_net_trans_rule_hw_ctrl {int port; int /*<<< orphan*/  qpn; } ;
struct TYPE_8__ {scalar_t__ steering_mode; int function; } ;
struct mlx4_dev {TYPE_4__ caps; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; int /*<<< orphan*/  dma; } ;
struct mlx4_cmd_info {int dummy; } ;
struct list_head {int dummy; } ;
struct _rule_hw {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {struct list_head* res_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
#define  MLX4_NET_TRANS_RULE_ID_ETH 132 
#define  MLX4_NET_TRANS_RULE_ID_IB 131 
#define  MLX4_NET_TRANS_RULE_ID_IPV4 130 
#define  MLX4_NET_TRANS_RULE_ID_TCP 129 
#define  MLX4_NET_TRANS_RULE_ID_UDP 128 
 int /*<<< orphan*/  MLX4_QP_FLOW_STEERING_ATTACH ; 
 int /*<<< orphan*/  MLX4_QP_FLOW_STEERING_DETACH ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int /*<<< orphan*/  RES_FS_RULE ; 
 size_t RES_MAC ; 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*,struct list_head*,int) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_qp**) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_net_trans_rule_hw_ctrl*,struct _rule_hw*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mlx4_dev*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*,struct res_qp*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*,char*) ; 
 scalar_t__ FUNC14 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC15 (struct mlx4_dev*) ; 
 int FUNC16 (struct mlx4_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int,struct _rule_hw*,struct list_head*) ; 

int FUNC22(struct mlx4_dev *dev, int slave,
					 struct mlx4_vhcr *vhcr,
					 struct mlx4_cmd_mailbox *inbox,
					 struct mlx4_cmd_mailbox *outbox,
					 struct mlx4_cmd_info *cmd)
{

	struct mlx4_priv *priv = FUNC15(dev);
	struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
	struct list_head *rlist = &tracker->slave_list[slave].res_list[RES_MAC];
	int err;
	int qpn;
	struct res_qp *rqp;
	struct mlx4_net_trans_rule_hw_ctrl *ctrl;
	struct _rule_hw  *rule_header;
	int header_id;
	struct res_fs_rule *rrule;
	u32 mbox_size;

	if (dev->caps.steering_mode !=
	    MLX4_STEERING_MODE_DEVICE_MANAGED)
		return -EOPNOTSUPP;

	ctrl = (struct mlx4_net_trans_rule_hw_ctrl *)inbox->buf;
	err = FUNC16(dev, slave, ctrl->port);
	if (err <= 0)
		return -EINVAL;
	ctrl->port = err;
	qpn = FUNC4(ctrl->qpn) & 0xffffff;
	err = FUNC5(dev, slave, qpn, RES_QP, &rqp);
	if (err) {
		FUNC17("Steering rule with qpn 0x%x rejected\n", qpn);
		return err;
	}
	rule_header = (struct _rule_hw *)(ctrl + 1);
	header_id = FUNC8(FUNC3(rule_header->id));

	if (header_id == MLX4_NET_TRANS_RULE_ID_ETH)
		FUNC6(ctrl, rule_header);

	if (slave == dev->caps.function)
		goto execute;

	switch (header_id) {
	case MLX4_NET_TRANS_RULE_ID_ETH:
		if (FUNC21(slave, rule_header, rlist)) {
			err = -EINVAL;
			goto err_put_qp;
		}
		break;
	case MLX4_NET_TRANS_RULE_ID_IB:
		break;
	case MLX4_NET_TRANS_RULE_ID_IPV4:
	case MLX4_NET_TRANS_RULE_ID_TCP:
	case MLX4_NET_TRANS_RULE_ID_UDP:
		FUNC18("Can't attach FS rule without L2 headers, adding L2 header\n");
		if (FUNC0(dev, slave, inbox, rlist, header_id)) {
			err = -EINVAL;
			goto err_put_qp;
		}
		vhcr->in_modifier +=
			sizeof(struct mlx4_net_trans_rule_hw_eth) >> 2;
		break;
	default:
		FUNC17("Corrupted mailbox\n");
		err = -EINVAL;
		goto err_put_qp;
	}

execute:
	err = FUNC11(dev, inbox->dma, &vhcr->out_param,
			   vhcr->in_modifier, 0,
			   MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_NATIVE);
	if (err)
		goto err_put_qp;


	err = FUNC1(dev, slave, vhcr->out_param, 1, RES_FS_RULE, qpn);
	if (err) {
		FUNC13(dev, "Fail to add flow steering resources\n");
		goto err_detach;
	}

	err = FUNC5(dev, slave, vhcr->out_param, RES_FS_RULE, &rrule);
	if (err)
		goto err_detach;

	mbox_size = FUNC20(inbox->buf);
	rrule->mirr_mbox = FUNC7(mbox_size, GFP_KERNEL);
	if (!rrule->mirr_mbox) {
		err = -ENOMEM;
		goto err_put_rule;
	}
	rrule->mirr_mbox_size = mbox_size;
	rrule->mirr_rule_id = 0;
	FUNC9(rrule->mirr_mbox, inbox->buf, mbox_size);

	/* set different port */
	ctrl = (struct mlx4_net_trans_rule_hw_ctrl *)rrule->mirr_mbox;
	if (ctrl->port == 1)
		ctrl->port = 2;
	else
		ctrl->port = 1;

	if (FUNC14(dev))
		FUNC12(dev, rrule);

	FUNC2(&rqp->ref_count);

err_put_rule:
	FUNC19(dev, slave, vhcr->out_param, RES_FS_RULE);
err_detach:
	/* detach rule on error */
	if (err)
		FUNC10(dev, vhcr->out_param, 0, 0,
			 MLX4_QP_FLOW_STEERING_DETACH, MLX4_CMD_TIME_CLASS_A,
			 MLX4_CMD_NATIVE);
err_put_qp:
	FUNC19(dev, slave, qpn, RES_QP);
	return err;
}