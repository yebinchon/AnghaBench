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
typedef  scalar_t__ u64 ;
struct res_qp {scalar_t__ qpn; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  mirr_mbox; scalar_t__ mirr_rule_id; } ;
struct res_fs_rule {scalar_t__ qpn; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  mirr_mbox; scalar_t__ mirr_rule_id; } ;
struct mlx4_vhcr {scalar_t__ in_param; } ;
struct TYPE_2__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_QP_FLOW_STEERING_DETACH ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int /*<<< orphan*/  RES_FS_RULE ; 
 int /*<<< orphan*/  RES_QP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,scalar_t__,int /*<<< orphan*/ ,struct res_qp**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct res_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlx4_dev*,int,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct mlx4_dev *dev, int slave,
					 struct mlx4_vhcr *vhcr,
					 struct mlx4_cmd_mailbox *inbox,
					 struct mlx4_cmd_mailbox *outbox,
					 struct mlx4_cmd_info *cmd)
{
	int err;
	struct res_qp *rqp;
	struct res_fs_rule *rrule;
	u64 mirr_reg_id;

	if (dev->caps.steering_mode !=
	    MLX4_STEERING_MODE_DEVICE_MANAGED)
		return -EOPNOTSUPP;

	err = FUNC1(dev, slave, vhcr->in_param, RES_FS_RULE, &rrule);
	if (err)
		return err;

	if (!rrule->mirr_mbox) {
		FUNC4(dev, "Mirror rules cannot be removed explicitly\n");
		FUNC7(dev, slave, vhcr->in_param, RES_FS_RULE);
		return -EINVAL;
	}
	mirr_reg_id = rrule->mirr_rule_id;
	FUNC2(rrule->mirr_mbox);

	/* Release the rule form busy state before removal */
	FUNC7(dev, slave, vhcr->in_param, RES_FS_RULE);
	err = FUNC1(dev, slave, rrule->qpn, RES_QP, &rqp);
	if (err)
		return err;

	if (mirr_reg_id && FUNC5(dev)) {
		err = FUNC1(dev, slave, mirr_reg_id, RES_FS_RULE, &rrule);
		if (err) {
			FUNC4(dev, "Fail to get resource of mirror rule\n");
		} else {
			FUNC7(dev, slave, mirr_reg_id, RES_FS_RULE);
			FUNC6(dev, rrule);
		}
	}
	err = FUNC8(dev, slave, vhcr->in_param, 1, RES_FS_RULE, 0);
	if (err) {
		FUNC4(dev, "Fail to remove flow steering resources\n");
		goto out;
	}

	err = FUNC3(dev, vhcr->in_param, 0, 0,
		       MLX4_QP_FLOW_STEERING_DETACH, MLX4_CMD_TIME_CLASS_A,
		       MLX4_CMD_NATIVE);
	if (!err)
		FUNC0(&rqp->ref_count);
out:
	FUNC7(dev, slave, rrule->qpn, RES_QP);
	return err;
}