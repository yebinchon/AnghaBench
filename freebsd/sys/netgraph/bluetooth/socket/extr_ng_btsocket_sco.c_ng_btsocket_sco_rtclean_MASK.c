#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ng_btsocket_sco_rtentry_p ;
typedef  TYPE_2__* ng_btsocket_sco_pcb_p ;
struct TYPE_14__ {int /*<<< orphan*/  so_error; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/ * hook; int /*<<< orphan*/  pcb_mtx; TYPE_4__* so; int /*<<< orphan*/  state; TYPE_1__* rt; } ;
struct TYPE_12__ {int /*<<< orphan*/ * hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETDOWN ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_BTSOCKET_SCO ; 
 int /*<<< orphan*/  NG_BTSOCKET_SCO_CLOSED ; 
 int NG_BTSOCKET_SCO_TIMO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  ng_btsocket_sco_rt ; 
 int /*<<< orphan*/  ng_btsocket_sco_rt_mtx ; 
 int /*<<< orphan*/  ng_btsocket_sco_sockets ; 
 int /*<<< orphan*/  ng_btsocket_sco_sockets_mtx ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC12(void *context, int pending)
{
	ng_btsocket_sco_pcb_p		pcb = NULL, pcb_next = NULL;
	ng_btsocket_sco_rtentry_p	rt = NULL;

	/*
	 * First disconnect all sockets that use "invalid" hook
	 */

	FUNC8(&ng_btsocket_sco_sockets_mtx);

	for(pcb = FUNC0(&ng_btsocket_sco_sockets); pcb != NULL; ) {
		FUNC8(&pcb->pcb_mtx);
		pcb_next = FUNC1(pcb, next);

		if (pcb->rt != NULL &&
		    pcb->rt->hook != NULL && FUNC3(pcb->rt->hook)) {
			if (pcb->flags & NG_BTSOCKET_SCO_TIMO)
				FUNC10(pcb);

			pcb->rt = NULL;
			pcb->so->so_error = ENETDOWN;
			pcb->state = NG_BTSOCKET_SCO_CLOSED;
			FUNC11(pcb->so);
		}

		FUNC9(&pcb->pcb_mtx);
		pcb = pcb_next;
	}

	FUNC9(&ng_btsocket_sco_sockets_mtx);

	/*
	 * Now cleanup routing table
	 */

	FUNC8(&ng_btsocket_sco_rt_mtx);

	for (rt = FUNC0(&ng_btsocket_sco_rt); rt != NULL; ) {
		ng_btsocket_sco_rtentry_p	rt_next = FUNC1(rt, next);

		if (rt->hook != NULL && FUNC3(rt->hook)) {
			FUNC2(rt, next);

			FUNC4(rt->hook, NULL);
			FUNC5(rt->hook); /* Remove extra reference */

			FUNC6(rt, sizeof(*rt));
			FUNC7(rt, M_NETGRAPH_BTSOCKET_SCO);
		}

		rt = rt_next;
	}

	FUNC9(&ng_btsocket_sco_rt_mtx);
}