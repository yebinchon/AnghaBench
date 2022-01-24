#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  service_timeout; } ;
struct TYPE_17__ {TYPE_3__ mra_rcvd; } ;
struct TYPE_18__ {TYPE_4__ param; int /*<<< orphan*/ * private_data; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_9__* port; TYPE_5__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_mra_msg {int /*<<< orphan*/  private_data; } ;
struct TYPE_12__ {int state; int /*<<< orphan*/  lap_state; } ;
struct TYPE_20__ {TYPE_6__* port; int /*<<< orphan*/  timeout; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; TYPE_10__ id; TYPE_11__* msg; TYPE_7__ av; } ;
struct TYPE_22__ {TYPE_8__* counter_group; } ;
struct TYPE_21__ {int /*<<< orphan*/ * counter; } ;
struct TYPE_19__ {int /*<<< orphan*/  mad_agent; } ;
struct TYPE_14__ {scalar_t__ mad; } ;
struct TYPE_15__ {TYPE_1__ recv_buf; } ;
struct TYPE_13__ {void** context; } ;

/* Variables and functions */
 size_t CM_MRA_COUNTER ; 
 int /*<<< orphan*/  CM_MSG_RESPONSE_OTHER ; 
 int /*<<< orphan*/  CM_MSG_RESPONSE_REP ; 
 int /*<<< orphan*/  CM_MSG_RESPONSE_REQ ; 
 size_t CM_RECV_DUPLICATES ; 
 int EINVAL ; 
#define  IB_CM_ESTABLISHED 132 
 int /*<<< orphan*/  IB_CM_LAP_SENT ; 
 int /*<<< orphan*/  IB_CM_MRA_LAP_RCVD ; 
#define  IB_CM_MRA_REP_RCVD 131 
#define  IB_CM_MRA_REQ_RCVD 130 
#define  IB_CM_REP_SENT 129 
#define  IB_CM_REQ_SENT 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC2 (struct cm_mra_msg*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_mra_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_mra_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_11__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_mra_msg *mra_msg;
	int timeout, ret;

	mra_msg = (struct cm_mra_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC2(mra_msg);
	if (!cm_id_priv)
		return -EINVAL;

	work->cm_event.private_data = &mra_msg->private_data;
	work->cm_event.param.mra_rcvd.service_timeout =
					FUNC6(mra_msg);
	timeout = FUNC3(FUNC6(mra_msg)) +
		  FUNC3(cm_id_priv->av.timeout);

	FUNC10(&cm_id_priv->lock);
	switch (cm_id_priv->id.state) {
	case IB_CM_REQ_SENT:
		if (FUNC5(mra_msg) != CM_MSG_RESPONSE_REQ ||
		    FUNC8(cm_id_priv->av.port->mad_agent,
				  cm_id_priv->msg, timeout))
			goto out;
		cm_id_priv->id.state = IB_CM_MRA_REQ_RCVD;
		break;
	case IB_CM_REP_SENT:
		if (FUNC5(mra_msg) != CM_MSG_RESPONSE_REP ||
		    FUNC8(cm_id_priv->av.port->mad_agent,
				  cm_id_priv->msg, timeout))
			goto out;
		cm_id_priv->id.state = IB_CM_MRA_REP_RCVD;
		break;
	case IB_CM_ESTABLISHED:
		if (FUNC5(mra_msg) != CM_MSG_RESPONSE_OTHER ||
		    cm_id_priv->id.lap_state != IB_CM_LAP_SENT ||
		    FUNC8(cm_id_priv->av.port->mad_agent,
				  cm_id_priv->msg, timeout)) {
			if (cm_id_priv->id.lap_state == IB_CM_MRA_LAP_RCVD)
				FUNC1(&work->port->
						counter_group[CM_RECV_DUPLICATES].
						counter[CM_MRA_COUNTER]);
			goto out;
		}
		cm_id_priv->id.lap_state = IB_CM_MRA_LAP_RCVD;
		break;
	case IB_CM_MRA_REQ_RCVD:
	case IB_CM_MRA_REP_RCVD:
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_MRA_COUNTER]);
		/* fall through */
	default:
		goto out;
	}

	cm_id_priv->msg->context[1] = (void *) (unsigned long)
				      cm_id_priv->id.state;
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC9(&work->list, &cm_id_priv->work_list);
	FUNC11(&cm_id_priv->lock);

	if (ret)
		FUNC7(cm_id_priv, work);
	else
		FUNC4(cm_id_priv);
	return 0;
out:
	FUNC11(&cm_id_priv->lock);
	FUNC4(cm_id_priv);
	return -EINVAL;
}