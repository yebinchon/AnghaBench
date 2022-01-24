#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/ * so_pcb; } ;
typedef  TYPE_1__* ng_btsocket_sco_pcb_p ;
struct TYPE_8__ {int flags; scalar_t__ state; int /*<<< orphan*/  pcb_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_BTSOCKET_SCO ; 
 scalar_t__ NG_BTSOCKET_SCO_CLOSED ; 
 scalar_t__ NG_BTSOCKET_SCO_OPEN ; 
 int NG_BTSOCKET_SCO_TIMO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * ng_btsocket_sco_node ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ng_btsocket_sco_sockets_mtx ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 

void
FUNC11(struct socket *so)
{
	ng_btsocket_sco_pcb_p	pcb = FUNC9(so);

	FUNC0(pcb != NULL, ("ng_btsocket_sco_detach: pcb == NULL"));

	if (ng_btsocket_sco_node == NULL) 
		return;

	FUNC5(&ng_btsocket_sco_sockets_mtx);
	FUNC5(&pcb->pcb_mtx);

	if (pcb->flags & NG_BTSOCKET_SCO_TIMO)
		FUNC8(pcb);

	if (pcb->state == NG_BTSOCKET_SCO_OPEN)
		FUNC7(pcb);

	pcb->state = NG_BTSOCKET_SCO_CLOSED;

	FUNC1(pcb, next);

	FUNC6(&pcb->pcb_mtx);
	FUNC6(&ng_btsocket_sco_sockets_mtx);

	FUNC4(&pcb->pcb_mtx);
	FUNC2(pcb, sizeof(*pcb));
	FUNC3(pcb, M_NETGRAPH_BTSOCKET_SCO);

	FUNC10(so);
	so->so_pcb = NULL;
}