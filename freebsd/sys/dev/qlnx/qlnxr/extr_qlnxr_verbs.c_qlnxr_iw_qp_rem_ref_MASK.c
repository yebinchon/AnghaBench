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
struct qlnxr_qp {int /*<<< orphan*/  qp_id; TYPE_1__* dev; int /*<<< orphan*/  refcnt; } ;
struct ib_qp {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct qlnxr_qp* FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlnxr_qp*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct ib_qp *ibqp)
{
	struct qlnxr_qp *qp = FUNC2(ibqp);
	qlnx_host_t	*ha;

	ha = qp->dev->ha;

	FUNC0(ha, "enter ibqp = %p qp = %p\n", ibqp, qp);

	if (FUNC1(&qp->refcnt)) {
		FUNC4(qp->dev, qp->qp_id);
		FUNC3(qp);
	}

	FUNC0(ha, "exit \n");
	return;
}