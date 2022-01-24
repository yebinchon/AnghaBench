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

/* Type definitions */
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct TYPE_15__ {int /*<<< orphan*/ * private_data; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_8__* port; TYPE_9__* mad_recv_wc; TYPE_2__ cm_event; } ;
struct TYPE_19__ {int state; int /*<<< orphan*/  lap_state; } ;
struct TYPE_17__ {TYPE_3__* port; } ;
struct cm_id_private {scalar_t__ local_qpn; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  tid; TYPE_6__ id; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; int /*<<< orphan*/  msg; TYPE_4__ av; } ;
struct TYPE_20__ {int /*<<< orphan*/  tid; } ;
struct cm_dreq_msg {TYPE_7__ hdr; int /*<<< orphan*/  private_data; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct cm_drep_msg {int dummy; } ;
struct TYPE_14__ {scalar_t__ mad; } ;
struct TYPE_22__ {TYPE_1__ recv_buf; } ;
struct TYPE_21__ {TYPE_5__* counter_group; } ;
struct TYPE_18__ {int /*<<< orphan*/ * counter; } ;
struct TYPE_16__ {int /*<<< orphan*/  mad_agent; } ;

/* Variables and functions */
 size_t CM_DREQ_COUNTER ; 
 size_t CM_RECV_DUPLICATES ; 
 int EINVAL ; 
#define  IB_CM_DREQ_RCVD 133 
#define  IB_CM_DREQ_SENT 132 
#define  IB_CM_ESTABLISHED 131 
 int /*<<< orphan*/  IB_CM_LAP_SENT ; 
 int /*<<< orphan*/  IB_CM_MRA_LAP_RCVD ; 
#define  IB_CM_MRA_REP_RCVD 130 
#define  IB_CM_REP_SENT 129 
#define  IB_CM_TIMEWAIT 128 
 int /*<<< orphan*/  FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_mad_send_buf* FUNC4 (TYPE_8__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,TYPE_9__*,struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_id_private*) ; 
 scalar_t__ FUNC7 (struct cm_dreq_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_drep_msg*,struct cm_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_dreq_msg *dreq_msg;
	struct ib_mad_send_buf *msg = NULL;
	int ret;

	dreq_msg = (struct cm_dreq_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC3(dreq_msg->remote_comm_id,
				   dreq_msg->local_comm_id);
	if (!cm_id_priv) {
		FUNC2(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_DREQ_COUNTER]);
		FUNC10(work->port, work->mad_recv_wc);
		return -EINVAL;
	}

	work->cm_event.private_data = &dreq_msg->private_data;

	FUNC15(&cm_id_priv->lock);
	if (cm_id_priv->local_qpn != FUNC7(dreq_msg))
		goto unlock;

	switch (cm_id_priv->id.state) {
	case IB_CM_REP_SENT:
	case IB_CM_DREQ_SENT:
		FUNC12(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
		break;
	case IB_CM_ESTABLISHED:
		if (cm_id_priv->id.lap_state == IB_CM_LAP_SENT ||
		    cm_id_priv->id.lap_state == IB_CM_MRA_LAP_RCVD)
			FUNC12(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
		break;
	case IB_CM_MRA_REP_RCVD:
		break;
	case IB_CM_TIMEWAIT:
		FUNC2(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_DREQ_COUNTER]);
		msg = FUNC4(work->port, work->mad_recv_wc);
		if (FUNC0(msg))
			goto unlock;

		FUNC8((struct cm_drep_msg *) msg->mad, cm_id_priv,
			       cm_id_priv->private_data,
			       cm_id_priv->private_data_len);
		FUNC16(&cm_id_priv->lock);

		if (FUNC5(work->port, work->mad_recv_wc, msg) ||
		    FUNC13(msg, NULL))
			FUNC9(msg);
		goto deref;
	case IB_CM_DREQ_RCVD:
		FUNC2(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_DREQ_COUNTER]);
		goto unlock;
	default:
		goto unlock;
	}
	cm_id_priv->id.state = IB_CM_DREQ_RCVD;
	cm_id_priv->tid = dreq_msg->hdr.tid;
	ret = FUNC1(&cm_id_priv->work_count);
	if (!ret)
		FUNC14(&work->list, &cm_id_priv->work_list);
	FUNC16(&cm_id_priv->lock);

	if (ret)
		FUNC11(cm_id_priv, work);
	else
		FUNC6(cm_id_priv);
	return 0;

unlock:	FUNC16(&cm_id_priv->lock);
deref:	FUNC6(cm_id_priv);
	return -EINVAL;
}