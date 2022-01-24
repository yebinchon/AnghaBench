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
struct bstp_port {int bp_state; int /*<<< orphan*/  bp_statetask; int /*<<< orphan*/  bp_forward_transitions; int /*<<< orphan*/  bp_forward_delay_timer; TYPE_1__* bp_ifp; int /*<<< orphan*/  bp_desg_fdelay; int /*<<< orphan*/  bp_desg_htime; int /*<<< orphan*/  bp_protover; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
#define  BSTP_IFSTATE_DISCARDING 130 
#define  BSTP_IFSTATE_FORWARDING 129 
#define  BSTP_IFSTATE_LEARNING 128 
 int /*<<< orphan*/  BSTP_PROTO_RSTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC4(struct bstp_port *bp, int state)
{
	if (bp->bp_state == state)
		return;

	bp->bp_state = state;

	switch (bp->bp_state) {
		case BSTP_IFSTATE_DISCARDING:
			FUNC0("state changed to DISCARDING on %s\n",
			    bp->bp_ifp->if_xname);
			break;

		case BSTP_IFSTATE_LEARNING:
			FUNC0("state changed to LEARNING on %s\n",
			    bp->bp_ifp->if_xname);

			FUNC1(&bp->bp_forward_delay_timer,
			    bp->bp_protover == BSTP_PROTO_RSTP ?
			    bp->bp_desg_htime : bp->bp_desg_fdelay);
			break;

		case BSTP_IFSTATE_FORWARDING:
			FUNC0("state changed to FORWARDING on %s\n",
			    bp->bp_ifp->if_xname);

			FUNC2(&bp->bp_forward_delay_timer);
			/* Record that we enabled forwarding */
			bp->bp_forward_transitions++;
			break;
	}

	/* notify the parent bridge */
	FUNC3(taskqueue_swi, &bp->bp_statetask);
}