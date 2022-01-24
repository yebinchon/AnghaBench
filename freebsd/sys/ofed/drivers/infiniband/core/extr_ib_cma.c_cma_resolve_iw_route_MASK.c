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
struct rdma_id_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  event; } ;
struct cma_work {int /*<<< orphan*/  work; TYPE_1__ event; int /*<<< orphan*/  new_state; int /*<<< orphan*/  old_state; struct rdma_id_private* id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  RDMA_CM_ROUTE_QUERY ; 
 int /*<<< orphan*/  RDMA_CM_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  cma_work_handler ; 
 int /*<<< orphan*/  cma_wq ; 
 struct cma_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rdma_id_private *id_priv, int timeout_ms)
{
	struct cma_work *work;

	work = FUNC1(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	work->id = id_priv;
	FUNC0(&work->work, cma_work_handler);
	work->old_state = RDMA_CM_ROUTE_QUERY;
	work->new_state = RDMA_CM_ROUTE_RESOLVED;
	work->event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
	FUNC2(cma_wq, &work->work);
	return 0;
}