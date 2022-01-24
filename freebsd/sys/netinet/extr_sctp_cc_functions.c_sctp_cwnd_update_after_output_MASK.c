#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  my_vtag; } ;
struct sctp_tcb {int rport; TYPE_1__* sctp_ep; TYPE_2__ asoc; } ;
struct sctp_nets {int cwnd; int ssthresh; int flight_size; int mtu; } ;
struct TYPE_3__ {int sctp_lport; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CWND_LOG_FROM_BRST ; 
 int SCTP_CWND_MONITOR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_nets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sctp_nets*,int,int) ; 
 int /*<<< orphan*/  bl ; 
 int /*<<< orphan*/  cwnd ; 
 int /*<<< orphan*/  sctp ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_logging_level ; 

__attribute__((used)) static void
FUNC4(struct sctp_tcb *stcb,
    struct sctp_nets *net, int burst_limit)
{
	int old_cwnd = net->cwnd;

	if (net->ssthresh < net->cwnd)
		net->ssthresh = net->cwnd;
	if (burst_limit) {
		net->cwnd = (net->flight_size + (burst_limit * net->mtu));
		FUNC2(&stcb->asoc, net);
		FUNC1(sctp, cwnd, net, bl,
		    stcb->asoc.my_vtag,
		    ((stcb->sctp_ep->sctp_lport << 16) | (stcb->rport)),
		    net,
		    old_cwnd, net->cwnd);
		if (FUNC0(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
			FUNC3(stcb, net, (net->cwnd - old_cwnd), SCTP_CWND_LOG_FROM_BRST);
		}
	}
}