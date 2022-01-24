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
struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int gsi_qp_created; int /*<<< orphan*/  ha; struct qlnxr_qp* gsi_qp; void* gsi_rqcq; void* gsi_sqcq; } ;
struct ib_qp_init_attr {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct qlnxr_dev *dev,
		struct qlnxr_qp *qp,
		struct ib_qp_init_attr *attrs)
{
	FUNC0(dev->ha, "enter\n");
		
	dev->gsi_qp_created = 1;
	dev->gsi_sqcq = FUNC1((attrs->send_cq));
	dev->gsi_rqcq = FUNC1((attrs->recv_cq));
	dev->gsi_qp = qp;

	FUNC0(dev->ha, "exit\n");

	return;
}