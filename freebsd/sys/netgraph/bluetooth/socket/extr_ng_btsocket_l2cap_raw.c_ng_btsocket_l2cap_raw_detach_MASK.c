#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/ * so_pcb; } ;
typedef  TYPE_1__* ng_btsocket_l2cap_raw_pcb_p ;
struct TYPE_6__ {int /*<<< orphan*/  pcb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_BTSOCKET_L2CAP_RAW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * ng_btsocket_l2cap_raw_node ; 
 int /*<<< orphan*/  ng_btsocket_l2cap_raw_sockets_mtx ; 
 TYPE_1__* FUNC7 (struct socket*) ; 

void
FUNC8(struct socket *so)
{
	ng_btsocket_l2cap_raw_pcb_p	pcb = FUNC7(so);

	FUNC0(pcb != NULL, ("nt_btsocket_l2cap_raw_detach: pcb == NULL"));
	if (ng_btsocket_l2cap_raw_node == NULL) 
		return;

	FUNC5(&ng_btsocket_l2cap_raw_sockets_mtx);
	FUNC5(&pcb->pcb_mtx);

	FUNC1(pcb, next);

	FUNC6(&pcb->pcb_mtx);
	FUNC6(&ng_btsocket_l2cap_raw_sockets_mtx);

	FUNC4(&pcb->pcb_mtx);

	FUNC2(pcb, sizeof(*pcb));
	FUNC3(pcb, M_NETGRAPH_BTSOCKET_L2CAP_RAW);

	so->so_pcb = NULL;
}