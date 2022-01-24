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
struct TYPE_2__ {int /*<<< orphan*/  peers_rwnd; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int mtu; int /*<<< orphan*/  ssthresh; int /*<<< orphan*/  cwnd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CWND_INITIALIZATION ; 
 int SCTP_CWND_LOGGING_ENABLE ; 
 int SCTP_CWND_MONITOR_ENABLE ; 
 int /*<<< orphan*/  SCTP_INITIAL_CWND ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_logging_level ; 

__attribute__((used)) static void
FUNC6(struct sctp_tcb *stcb, struct sctp_nets *net)
{
	/*
	 * We take the max of the burst limit times a MTU or the
	 * INITIAL_CWND. We then limit this to 4 MTU's of sending.
	 */
	net->cwnd = FUNC3((net->mtu * 4), FUNC2((2 * net->mtu), SCTP_INITIAL_CWND));
	net->ssthresh = stcb->asoc.peers_rwnd;
	FUNC4(&stcb->asoc, net);
	FUNC1(net);

	if (FUNC0(sctp_logging_level) & (SCTP_CWND_MONITOR_ENABLE | SCTP_CWND_LOGGING_ENABLE)) {
		FUNC5(stcb, net, 0, SCTP_CWND_INITIALIZATION);
	}
}