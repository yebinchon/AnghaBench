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
struct TYPE_4__ {int /*<<< orphan*/ * umem; } ;
struct TYPE_3__ {int /*<<< orphan*/ * umem; } ;
struct qlnxr_qp {TYPE_2__ urq; TYPE_1__ usq; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct qlnxr_dev *dev, struct qlnxr_qp *qp)
{
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");
 
	if (qp->usq.umem)
		FUNC1(qp->usq.umem);

	qp->usq.umem = NULL;

	if (qp->urq.umem)
		FUNC1(qp->urq.umem);

	qp->urq.umem = NULL;

	FUNC0(ha, "exit\n");
	return;
}