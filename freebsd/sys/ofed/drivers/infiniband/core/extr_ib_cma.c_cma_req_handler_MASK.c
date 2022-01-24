#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int (* event_handler ) (TYPE_5__*,struct rdma_cm_event*) ;scalar_t__ qp_type; } ;
struct TYPE_13__ {struct ib_cm_id* ib; } ;
struct rdma_id_private {scalar_t__ state; TYPE_5__ id; int /*<<< orphan*/  handler_mutex; TYPE_4__ cm_id; int /*<<< orphan*/  refcount; } ;
struct TYPE_10__ {char* private_data; scalar_t__ private_data_len; } ;
struct TYPE_11__ {TYPE_1__ ud; } ;
struct rdma_cm_event {TYPE_2__ param; int /*<<< orphan*/  event; } ;
struct net_device {int dummy; } ;
struct ib_cm_id {int /*<<< orphan*/  cm_handler; struct rdma_id_private* context; } ;
struct TYPE_12__ {int /*<<< orphan*/  req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; scalar_t__ private_data; TYPE_3__ param; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMA_CM_MRA_SETTING ; 
 int ECONNABORTED ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE ; 
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ; 
 scalar_t__ IB_QPT_UD ; 
 scalar_t__ FUNC0 (struct rdma_id_private*) ; 
 int FUNC1 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  RDMA_CM_CONNECT ; 
 int /*<<< orphan*/  RDMA_CM_DESTROYING ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_CONNECT_REQUEST ; 
 scalar_t__ RDMA_CM_LISTEN ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rdma_id_private*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct ib_cm_event*) ; 
 scalar_t__ FUNC5 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cma_ib_handler ; 
 struct rdma_id_private* FUNC8 (struct ib_cm_id*,struct ib_cm_event*,struct net_device**) ; 
 struct rdma_id_private* FUNC9 (TYPE_5__*,struct ib_cm_event*,struct net_device*) ; 
 struct rdma_id_private* FUNC10 (TYPE_5__*,struct ib_cm_event*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_cm_event*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC12 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC15 (struct rdma_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 
 int FUNC20 (TYPE_5__*,struct rdma_cm_event*) ; 

__attribute__((used)) static int FUNC21(struct ib_cm_id *cm_id, struct ib_cm_event *ib_event)
{
	struct rdma_id_private *listen_id, *conn_id = NULL;
	struct rdma_cm_event event;
	struct net_device *net_dev;
	int offset, ret;

	listen_id = FUNC8(cm_id, ib_event, &net_dev);
	if (FUNC0(listen_id))
		return FUNC1(listen_id);

	if (!FUNC4(&listen_id->id, ib_event)) {
		ret = -EINVAL;
		goto net_dev_put;
	}

	FUNC16(&listen_id->handler_mutex);
	if (listen_id->state != RDMA_CM_LISTEN) {
		ret = -ECONNABORTED;
		goto err1;
	}

	FUNC15(&event, 0, sizeof event);
	offset = FUNC12(listen_id);
	event.event = RDMA_CM_EVENT_CONNECT_REQUEST;
	if (ib_event->event == IB_CM_SIDR_REQ_RECEIVED) {
		conn_id = FUNC10(&listen_id->id, ib_event, net_dev);
		event.param.ud.private_data = (char *)ib_event->private_data + offset;
		event.param.ud.private_data_len =
				IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE - offset;
	} else {
		conn_id = FUNC9(&listen_id->id, ib_event, net_dev);
		FUNC11(&event, &ib_event->param.req_rcvd,
				       ib_event->private_data, offset);
	}
	if (!conn_id) {
		ret = -ENOMEM;
		goto err1;
	}

	FUNC17(&conn_id->handler_mutex, SINGLE_DEPTH_NESTING);
	ret = FUNC3(conn_id, listen_id);
	if (ret)
		goto err2;

	conn_id->cm_id.ib = cm_id;
	cm_id->context = conn_id;
	cm_id->cm_handler = cma_ib_handler;

	/*
	 * Protect against the user destroying conn_id from another thread
	 * until we're done accessing it.
	 */
	FUNC2(&conn_id->refcount);
	ret = conn_id->id.event_handler(&conn_id->id, &event);
	if (ret)
		goto err3;
	/*
	 * Acquire mutex to prevent user executing rdma_destroy_id()
	 * while we're accessing the cm_id.
	 */
	FUNC16(&lock);
	if (FUNC5(conn_id, RDMA_CM_CONNECT) &&
	    (conn_id->id.qp_type != IB_QPT_UD))
		FUNC14(cm_id, CMA_CM_MRA_SETTING, NULL, 0);
	FUNC18(&lock);
	FUNC18(&conn_id->handler_mutex);
	FUNC18(&listen_id->handler_mutex);
	FUNC6(conn_id);
	if (net_dev)
		FUNC13(net_dev);
	return 0;

err3:
	FUNC6(conn_id);
	/* Destroy the CM ID by returning a non-zero value. */
	conn_id->cm_id.ib = NULL;
err2:
	FUNC7(conn_id, RDMA_CM_DESTROYING);
	FUNC18(&conn_id->handler_mutex);
err1:
	FUNC18(&listen_id->handler_mutex);
	if (conn_id)
		FUNC19(&conn_id->id);

net_dev_put:
	if (net_dev)
		FUNC13(net_dev);

	return ret;
}