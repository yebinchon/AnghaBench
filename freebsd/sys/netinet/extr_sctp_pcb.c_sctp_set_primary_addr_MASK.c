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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {struct sctp_nets* primary_destination; int /*<<< orphan*/  nets; int /*<<< orphan*/ * alternate; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int dest_state; } ;

/* Variables and functions */
 int SCTP_ADDR_PF ; 
 int SCTP_ADDR_REQ_PRIMARY ; 
 int SCTP_ADDR_UNCONFIRMED ; 
 struct sctp_nets* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sctp_nets*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sctp_nets*,int /*<<< orphan*/ ) ; 
 struct sctp_nets* FUNC3 (struct sctp_tcb*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sctp_next ; 

int
FUNC5(struct sctp_tcb *stcb, struct sockaddr *sa,
    struct sctp_nets *net)
{
	/* make sure the requested primary address exists in the assoc */
	if (net == NULL && sa)
		net = FUNC3(stcb, sa);

	if (net == NULL) {
		/* didn't find the requested primary address! */
		return (-1);
	} else {
		/* set the primary address */
		if (net->dest_state & SCTP_ADDR_UNCONFIRMED) {
			/* Must be confirmed, so queue to set */
			net->dest_state |= SCTP_ADDR_REQ_PRIMARY;
			return (0);
		}
		stcb->asoc.primary_destination = net;
		if (!(net->dest_state & SCTP_ADDR_PF) && (stcb->asoc.alternate)) {
			FUNC4(stcb->asoc.alternate);
			stcb->asoc.alternate = NULL;
		}
		net = FUNC0(&stcb->asoc.nets);
		if (net != stcb->asoc.primary_destination) {
			/*
			 * first one on the list is NOT the primary
			 * sctp_cmpaddr() is much more efficient if the
			 * primary is the first on the list, make it so.
			 */
			FUNC2(&stcb->asoc.nets, stcb->asoc.primary_destination, sctp_next);
			FUNC1(&stcb->asoc.nets, stcb->asoc.primary_destination, sctp_next);
		}
		return (0);
	}
}