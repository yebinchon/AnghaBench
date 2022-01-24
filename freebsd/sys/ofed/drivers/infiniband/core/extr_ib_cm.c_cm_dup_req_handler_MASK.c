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
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct cm_work {int /*<<< orphan*/  mad_recv_wc; TYPE_3__* port; } ;
struct cm_rej_msg {int dummy; } ;
struct cm_mra_msg {int dummy; } ;
struct TYPE_5__ {int state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; int /*<<< orphan*/  service_timeout; TYPE_2__ id; } ;
struct TYPE_6__ {TYPE_1__* counter_group; } ;
struct TYPE_4__ {int /*<<< orphan*/ * counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_MSG_RESPONSE_REQ ; 
 size_t CM_RECV_DUPLICATES ; 
 size_t CM_REQ_COUNTER ; 
#define  IB_CM_MRA_REQ_SENT 129 
 int /*<<< orphan*/  IB_CM_REJ_STALE_CONN ; 
 int IB_CM_REQ_RCVD ; 
#define  IB_CM_TIMEWAIT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,struct ib_mad_send_buf**) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_mra_msg*,struct cm_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_rej_msg*,struct cm_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_send_buf*) ; 
 int FUNC5 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cm_work *work,
			       struct cm_id_private *cm_id_priv)
{
	struct ib_mad_send_buf *msg = NULL;
	int ret;

	FUNC0(&work->port->counter_group[CM_RECV_DUPLICATES].
			counter[CM_REQ_COUNTER]);

	/* Quick state check to discard duplicate REQs. */
	if (cm_id_priv->id.state == IB_CM_REQ_RCVD)
		return;

	ret = FUNC1(work->port, work->mad_recv_wc, &msg);
	if (ret)
		return;

	FUNC6(&cm_id_priv->lock);
	switch (cm_id_priv->id.state) {
	case IB_CM_MRA_REQ_SENT:
		FUNC2((struct cm_mra_msg *) msg->mad, cm_id_priv,
			      CM_MSG_RESPONSE_REQ, cm_id_priv->service_timeout,
			      cm_id_priv->private_data,
			      cm_id_priv->private_data_len);
		break;
	case IB_CM_TIMEWAIT:
		FUNC3((struct cm_rej_msg *) msg->mad, cm_id_priv,
			      IB_CM_REJ_STALE_CONN, NULL, 0, NULL, 0);
		break;
	default:
		goto unlock;
	}
	FUNC7(&cm_id_priv->lock);

	ret = FUNC5(msg, NULL);
	if (ret)
		goto free;
	return;

unlock:	FUNC7(&cm_id_priv->lock);
free:	FUNC4(msg);
}