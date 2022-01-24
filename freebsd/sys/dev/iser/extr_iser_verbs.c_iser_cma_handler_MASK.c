#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rdma_cm_id {struct iser_conn* context; } ;
struct rdma_cm_event {int event; int /*<<< orphan*/  status; } ;
struct iser_conn {int /*<<< orphan*/  state_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct iser_conn*,struct rdma_cm_id*) ; 
#define  RDMA_CM_EVENT_ADDR_CHANGE 138 
#define  RDMA_CM_EVENT_ADDR_ERROR 137 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 136 
#define  RDMA_CM_EVENT_CONNECT_ERROR 135 
#define  RDMA_CM_EVENT_DISCONNECTED 134 
#define  RDMA_CM_EVENT_ESTABLISHED 133 
#define  RDMA_CM_EVENT_REJECTED 132 
#define  RDMA_CM_EVENT_ROUTE_ERROR 131 
#define  RDMA_CM_EVENT_ROUTE_RESOLVED 130 
#define  RDMA_CM_EVENT_TIMEWAIT_EXIT 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 int /*<<< orphan*/  FUNC2 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_id*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
	struct iser_conn *iser_conn;
	int ret = 0;

	iser_conn = cma_id->context;
	FUNC1("event %d status %d conn %p id %p",
		  event->event, event->status, cma_id->context, cma_id);

	FUNC7(&iser_conn->state_mutex);
	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		FUNC2(cma_id);
		break;
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		FUNC6(cma_id);
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		FUNC5(cma_id);
		break;
	case RDMA_CM_EVENT_ADDR_ERROR:
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_REJECTED:
		FUNC4(cma_id);
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
	case RDMA_CM_EVENT_ADDR_CHANGE:
	case RDMA_CM_EVENT_TIMEWAIT_EXIT:
		FUNC3(cma_id, false);
		break;
	default:
		FUNC0("Unexpected RDMA CM event (%d)", event->event);
		break;
	}
	FUNC8(&iser_conn->state_mutex);

	return (ret);
}