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
struct qlnxr_qp {int /*<<< orphan*/  refcnt; TYPE_1__* dev; } ;
struct ib_qp {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct qlnxr_qp* FUNC2 (struct ib_qp*) ; 

void
FUNC3(struct ib_qp *ibqp)
{
	struct qlnxr_qp *qp = FUNC2(ibqp);
	qlnx_host_t	*ha;

	ha = qp->dev->ha;

	FUNC0(ha, "enter ibqp = %p\n", ibqp);
 
	FUNC1(&qp->refcnt);

	FUNC0(ha, "exit \n");
	return;
}