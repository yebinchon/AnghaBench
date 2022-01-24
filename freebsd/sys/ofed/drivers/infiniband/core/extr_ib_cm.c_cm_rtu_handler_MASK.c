#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * private_data; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_5__* port; TYPE_3__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_rtu_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct TYPE_16__ {TYPE_7__* port; } ;
struct TYPE_14__ {scalar_t__ state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  msg; TYPE_8__ av; TYPE_6__ id; } ;
struct TYPE_15__ {int /*<<< orphan*/  mad_agent; } ;
struct TYPE_13__ {TYPE_4__* counter_group; } ;
struct TYPE_12__ {int /*<<< orphan*/ * counter; } ;
struct TYPE_9__ {scalar_t__ mad; } ;
struct TYPE_10__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 size_t CM_RECV_DUPLICATES ; 
 size_t CM_RTU_COUNTER ; 
 int EINVAL ; 
 scalar_t__ IB_CM_ESTABLISHED ; 
 scalar_t__ IB_CM_MRA_REP_RCVD ; 
 scalar_t__ IB_CM_REP_SENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_rtu_msg *rtu_msg;
	int ret;

	rtu_msg = (struct cm_rtu_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC2(rtu_msg->remote_comm_id,
				   rtu_msg->local_comm_id);
	if (!cm_id_priv)
		return -EINVAL;

	work->cm_event.private_data = &rtu_msg->private_data;

	FUNC7(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_REP_SENT &&
	    cm_id_priv->id.state != IB_CM_MRA_REP_RCVD) {
		FUNC8(&cm_id_priv->lock);
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_RTU_COUNTER]);
		goto out;
	}
	cm_id_priv->id.state = IB_CM_ESTABLISHED;

	FUNC5(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC6(&work->list, &cm_id_priv->work_list);
	FUNC8(&cm_id_priv->lock);

	if (ret)
		FUNC4(cm_id_priv, work);
	else
		FUNC3(cm_id_priv);
	return 0;
out:
	FUNC3(cm_id_priv);
	return -EINVAL;
}