#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * private_data; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_3__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct TYPE_12__ {TYPE_5__* port; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  msg; TYPE_6__ av; TYPE_4__ id; } ;
struct cm_drep_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  mad_agent; } ;
struct TYPE_7__ {scalar_t__ mad; } ;
struct TYPE_8__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_CM_DREQ_RCVD ; 
 scalar_t__ IB_CM_DREQ_SENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_drep_msg *drep_msg;
	int ret;

	drep_msg = (struct cm_drep_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC1(drep_msg->remote_comm_id,
				   drep_msg->local_comm_id);
	if (!cm_id_priv)
		return -EINVAL;

	work->cm_event.private_data = &drep_msg->private_data;

	FUNC7(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_DREQ_SENT &&
	    cm_id_priv->id.state != IB_CM_DREQ_RCVD) {
		FUNC8(&cm_id_priv->lock);
		goto out;
	}
	FUNC3(cm_id_priv);

	FUNC5(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC6(&work->list, &cm_id_priv->work_list);
	FUNC8(&cm_id_priv->lock);

	if (ret)
		FUNC4(cm_id_priv, work);
	else
		FUNC2(cm_id_priv);
	return 0;
out:
	FUNC2(cm_id_priv);
	return -EINVAL;
}