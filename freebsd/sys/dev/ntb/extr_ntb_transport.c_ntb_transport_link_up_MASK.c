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
struct ntb_transport_qp {int client_ready; int /*<<< orphan*/  link_work; int /*<<< orphan*/  qp_num; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {scalar_t__ link_is_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntb_qp_link_work ; 

void
FUNC2(struct ntb_transport_qp *qp)
{
	struct ntb_transport_ctx *nt = qp->transport;

	qp->client_ready = true;

	FUNC1(2, "qp %d client ready\n", qp->qp_num);

	if (nt->link_is_up)
		FUNC0(&qp->link_work, 0, ntb_qp_link_work, qp);
}