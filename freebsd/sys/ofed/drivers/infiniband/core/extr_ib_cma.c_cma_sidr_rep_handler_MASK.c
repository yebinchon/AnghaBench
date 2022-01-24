#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  path_rec; } ;
struct TYPE_13__ {int (* event_handler ) (TYPE_6__*,struct rdma_cm_event*) ;TYPE_2__ route; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ib; } ;
struct rdma_id_private {scalar_t__ state; int /*<<< orphan*/  handler_mutex; TYPE_6__ id; TYPE_5__ cm_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  qkey; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  ah_attr; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; } ;
struct TYPE_11__ {TYPE_3__ ud; } ;
struct rdma_cm_event {int status; void* event; TYPE_4__ param; } ;
struct ib_cm_sidr_rep_event_param {int status; int /*<<< orphan*/  qkey; int /*<<< orphan*/  qpn; } ;
struct ib_cm_id {struct rdma_id_private* context; } ;
struct TYPE_8__ {struct ib_cm_sidr_rep_event_param sidr_rep_rcvd; } ;
struct ib_cm_event {int event; TYPE_1__ param; int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IB_CM_SIDR_REP_PRIVATE_DATA_SIZE ; 
#define  IB_CM_SIDR_REP_RECEIVED 129 
#define  IB_CM_SIDR_REQ_ERROR 128 
 int IB_SIDR_SUCCESS ; 
 scalar_t__ RDMA_CM_CONNECT ; 
 int /*<<< orphan*/  RDMA_CM_DESTROYING ; 
 void* RDMA_CM_EVENT_ADDR_ERROR ; 
 void* RDMA_CM_EVENT_ESTABLISHED ; 
 void* RDMA_CM_EVENT_UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_6__*,struct rdma_cm_event*) ; 

__attribute__((used)) static int FUNC9(struct ib_cm_id *cm_id,
				struct ib_cm_event *ib_event)
{
	struct rdma_id_private *id_priv = cm_id->context;
	struct rdma_cm_event event;
	struct ib_cm_sidr_rep_event_param *rep = &ib_event->param.sidr_rep_rcvd;
	int ret = 0;

	FUNC4(&id_priv->handler_mutex);
	if (id_priv->state != RDMA_CM_CONNECT)
		goto out;

	FUNC3(&event, 0, sizeof event);
	switch (ib_event->event) {
	case IB_CM_SIDR_REQ_ERROR:
		event.event = RDMA_CM_EVENT_UNREACHABLE;
		event.status = -ETIMEDOUT;
		break;
	case IB_CM_SIDR_REP_RECEIVED:
		event.param.ud.private_data = ib_event->private_data;
		event.param.ud.private_data_len = IB_CM_SIDR_REP_PRIVATE_DATA_SIZE;
		if (rep->status != IB_SIDR_SUCCESS) {
			event.event = RDMA_CM_EVENT_UNREACHABLE;
			event.status = ib_event->param.sidr_rep_rcvd.status;
			break;
		}
		ret = FUNC1(id_priv, rep->qkey);
		if (ret) {
			event.event = RDMA_CM_EVENT_ADDR_ERROR;
			event.status = ret;
			break;
		}
		ret = FUNC2(id_priv->id.device,
					   id_priv->id.port_num,
					   id_priv->id.route.path_rec,
					   &event.param.ud.ah_attr);
		if (ret) {
			event.event = RDMA_CM_EVENT_ADDR_ERROR;
			event.status = ret;
			break;
		}
		event.param.ud.qp_num = rep->qpn;
		event.param.ud.qkey = rep->qkey;
		event.event = RDMA_CM_EVENT_ESTABLISHED;
		event.status = 0;
		break;
	default:
		FUNC6("RDMA CMA: unexpected IB CM event: %d\n",
		       ib_event->event);
		goto out;
	}

	ret = id_priv->id.event_handler(&id_priv->id, &event);
	if (ret) {
		/* Destroy the CM ID by returning a non-zero value. */
		id_priv->cm_id.ib = NULL;
		FUNC0(id_priv, RDMA_CM_DESTROYING);
		FUNC5(&id_priv->handler_mutex);
		FUNC7(&id_priv->id);
		return ret;
	}
out:
	FUNC5(&id_priv->handler_mutex);
	return ret;
}