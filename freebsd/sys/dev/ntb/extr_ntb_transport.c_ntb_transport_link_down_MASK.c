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
typedef  int uint32_t ;
struct ntb_transport_qp {int client_ready; int /*<<< orphan*/  link_work; scalar_t__ link_is_up; int /*<<< orphan*/  dev; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {int qp_count; TYPE_1__* qp_vec; } ;
struct TYPE_2__ {scalar_t__ client_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  NTBT_QP_LINKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_transport_qp*) ; 

void
FUNC3(struct ntb_transport_qp *qp)
{
	struct ntb_transport_ctx *nt = qp->transport;
	int i;
	uint32_t val;

	qp->client_ready = false;
	for (i = 0, val = 0; i < nt->qp_count; i++) {
		if (nt->qp_vec[i].client_ready)
			val |= (1 << i);
	}
	FUNC1(qp->dev, NTBT_QP_LINKS, val);

	if (qp->link_is_up)
		FUNC2(qp);
	else
		FUNC0(&qp->link_work);
}