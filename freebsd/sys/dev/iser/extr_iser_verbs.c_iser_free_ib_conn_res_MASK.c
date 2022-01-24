#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iser_device {int dummy; } ;
struct ib_conn {struct iser_device* device; int /*<<< orphan*/ * qp; int /*<<< orphan*/  cma_id; TYPE_1__* comp; } ;
struct iser_conn {scalar_t__ rx_descs; scalar_t__ login_buf; struct ib_conn ib_conn; } ;
struct TYPE_4__ {int /*<<< orphan*/  connlist_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_qps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ ig ; 
 int /*<<< orphan*/  FUNC1 (struct iser_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(struct iser_conn *iser_conn,
				  bool destroy)
{
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	struct iser_device *device = ib_conn->device;

	FUNC0("freeing conn %p cma_id %p qp %p",
		  iser_conn, ib_conn->cma_id, ib_conn->qp);

	if (ib_conn->qp != NULL) {
		FUNC4(&ig.connlist_mutex);
		ib_conn->comp->active_qps--;
		FUNC5(&ig.connlist_mutex);
		FUNC6(ib_conn->cma_id);
		ib_conn->qp = NULL;
	}

	if (destroy) {
		if (iser_conn->login_buf)
			FUNC2(iser_conn);

		if (iser_conn->rx_descs)
			FUNC3(iser_conn);

		if (device != NULL) {
			FUNC1(device);
			ib_conn->device = NULL;
		}
	}
}