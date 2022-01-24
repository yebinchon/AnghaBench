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
struct TYPE_2__ {int /*<<< orphan*/  max_send_times; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_TIMER_TYPE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_tcb*,struct sctp_nets*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_nets* FUNC1 (struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_tcb*,struct sctp_nets*) ; 
 scalar_t__ FUNC3 (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ; 

int
FUNC5(struct sctp_inpcb *inp, struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
	struct sctp_nets *alt;

	/* first threshold management */
	if (FUNC3(inp, stcb, net, stcb->asoc.max_send_times)) {
		/* Assoc is over */
		return (1);
	}
	FUNC0(stcb, net, 1, 0, 0);
	/* second select an alternative */
	alt = FUNC1(stcb, net, 0);

	/* third generate a shutdown into the queue for out net */
	FUNC2(stcb, alt);

	/* fourth restart timer */
	FUNC4(SCTP_TIMER_TYPE_SHUTDOWN, inp, stcb, alt);
	return (0);
}