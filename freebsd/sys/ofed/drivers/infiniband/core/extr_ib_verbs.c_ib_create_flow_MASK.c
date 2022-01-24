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
struct ib_qp {int /*<<< orphan*/  usecnt; TYPE_1__* device; } ;
struct ib_flow_attr {int dummy; } ;
struct ib_flow {int dummy; } ;
struct TYPE_2__ {struct ib_flow* (* create_flow ) (struct ib_qp*,struct ib_flow_attr*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 struct ib_flow* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_flow*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ib_flow* FUNC3 (struct ib_qp*,struct ib_flow_attr*,int) ; 

struct ib_flow *FUNC4(struct ib_qp *qp,
			       struct ib_flow_attr *flow_attr,
			       int domain)
{
	struct ib_flow *flow_id;
	if (!qp->device->create_flow)
		return FUNC0(-ENOSYS);

	flow_id = qp->device->create_flow(qp, flow_attr, domain);
	if (!FUNC1(flow_id))
		FUNC2(&qp->usecnt);
	return flow_id;
}