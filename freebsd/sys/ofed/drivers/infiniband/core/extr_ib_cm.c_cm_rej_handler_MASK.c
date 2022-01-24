#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cm_work {int /*<<< orphan*/  list; TYPE_2__* mad_recv_wc; } ;
struct cm_rej_msg {int /*<<< orphan*/  reason; } ;
struct TYPE_10__ {TYPE_4__* port; } ;
struct TYPE_8__ {int state; int /*<<< orphan*/  lap_state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  msg; TYPE_5__ av; TYPE_3__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/  mad_agent; } ;
struct TYPE_6__ {scalar_t__ mad; } ;
struct TYPE_7__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IB_CM_DREQ_SENT 137 
#define  IB_CM_ESTABLISHED 136 
 int /*<<< orphan*/  IB_CM_LAP_SENT ; 
 int /*<<< orphan*/  IB_CM_LAP_UNINIT ; 
#define  IB_CM_MRA_REP_RCVD 135 
#define  IB_CM_MRA_REP_SENT 134 
#define  IB_CM_MRA_REQ_RCVD 133 
#define  IB_CM_MRA_REQ_SENT 132 
 int /*<<< orphan*/  IB_CM_REJ_STALE_CONN ; 
#define  IB_CM_REP_RCVD 131 
#define  IB_CM_REP_SENT 130 
#define  IB_CM_REQ_RCVD 129 
#define  IB_CM_REQ_SENT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC2 (struct cm_rej_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_work*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_rej_msg *rej_msg;
	int ret;

	rej_msg = (struct cm_rej_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC2(rej_msg);
	if (!cm_id_priv)
		return -EINVAL;

	FUNC5(work);

	FUNC10(&cm_id_priv->lock);
	switch (cm_id_priv->id.state) {
	case IB_CM_REQ_SENT:
	case IB_CM_MRA_REQ_RCVD:
	case IB_CM_REP_SENT:
	case IB_CM_MRA_REP_RCVD:
		FUNC8(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
		/* fall through */
	case IB_CM_REQ_RCVD:
	case IB_CM_MRA_REQ_SENT:
		if (FUNC0(rej_msg->reason) == IB_CM_REJ_STALE_CONN)
			FUNC4(cm_id_priv);
		else
			FUNC7(cm_id_priv);
		break;
	case IB_CM_DREQ_SENT:
		FUNC8(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
		/* fall through */
	case IB_CM_REP_RCVD:
	case IB_CM_MRA_REP_SENT:
		FUNC4(cm_id_priv);
		break;
	case IB_CM_ESTABLISHED:
		if (cm_id_priv->id.lap_state == IB_CM_LAP_UNINIT ||
		    cm_id_priv->id.lap_state == IB_CM_LAP_SENT) {
			if (cm_id_priv->id.lap_state == IB_CM_LAP_SENT)
				FUNC8(cm_id_priv->av.port->mad_agent,
					      cm_id_priv->msg);
			FUNC4(cm_id_priv);
			break;
		}
		/* fall through */
	default:
		FUNC11(&cm_id_priv->lock);
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC1(&cm_id_priv->work_count);
	if (!ret)
		FUNC9(&work->list, &cm_id_priv->work_list);
	FUNC11(&cm_id_priv->lock);

	if (ret)
		FUNC6(cm_id_priv, work);
	else
		FUNC3(cm_id_priv);
	return 0;
out:
	FUNC3(cm_id_priv);
	return -EINVAL;
}