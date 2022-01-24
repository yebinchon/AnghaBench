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
struct sockaddr {int dummy; } ;
struct ib_conn {int /*<<< orphan*/ * cma_id; int /*<<< orphan*/ * device; } ;
struct iser_conn {int handoff_done; scalar_t__ state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  up_cv; struct ib_conn ib_conn; } ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  connlist_mutex; int /*<<< orphan*/  connlist; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ ISER_CONN_PENDING ; 
 scalar_t__ ISER_CONN_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iser_conn* FUNC5 (struct icl_conn*) ; 
 TYPE_1__ ig ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC6 (struct iser_conn*) ; 
 int /*<<< orphan*/  iser_cma_handler ; 
 int /*<<< orphan*/  FUNC7 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(struct icl_conn *ic, int domain, int socktype,
		int protocol, struct sockaddr *from_sa, struct sockaddr *to_sa)
{
	struct iser_conn *iser_conn = FUNC5(ic);
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	int err = 0;

	FUNC7(ic);

	FUNC13(&iser_conn->state_mutex);
	 /* the device is known only --after-- address resolution */
	ib_conn->device = NULL;
	iser_conn->handoff_done = false;

	iser_conn->state = ISER_CONN_PENDING;

	ib_conn->cma_id = FUNC11(&init_net, iser_cma_handler, (void *)iser_conn,
			RDMA_PS_TCP, IB_QPT_RC);
	if (FUNC2(ib_conn->cma_id)) {
		err = -FUNC3(ib_conn->cma_id);
		FUNC1("rdma_create_id failed: %d", err);
		goto id_failure;
	}

	err = FUNC12(ib_conn->cma_id, from_sa, to_sa, 1000);
	if (err) {
		FUNC1("rdma_resolve_addr failed: %d", err);
		if (err < 0)
			err = -err;
		goto addr_failure;
	}

	FUNC0("before cv_wait: %p", iser_conn);
	FUNC4(&iser_conn->up_cv, &iser_conn->state_mutex);
	FUNC0("after cv_wait: %p", iser_conn);

	if (iser_conn->state != ISER_CONN_UP) {
		err = EIO;
		goto addr_failure;
	}

	err = FUNC6(iser_conn);
	if (err)
		goto addr_failure;
	FUNC14(&iser_conn->state_mutex);

	FUNC9(&ig.connlist_mutex);
	FUNC8(&iser_conn->conn_list, &ig.connlist);
	FUNC10(&ig.connlist_mutex);

	return (0);

id_failure:
	ib_conn->cma_id = NULL;
addr_failure:
	FUNC14(&iser_conn->state_mutex);
	return (err);
}