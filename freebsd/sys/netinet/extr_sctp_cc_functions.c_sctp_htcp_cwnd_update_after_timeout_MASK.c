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
struct sctp_tcb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  htcp_ca; } ;
struct sctp_nets {int cwnd; int mtu; scalar_t__ partial_bytes_acked; int /*<<< orphan*/  ssthresh; TYPE_1__ cc_mod; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CWND_LOG_FROM_RTX ; 
 int SCTP_CWND_MONITOR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_tcb*,struct sctp_nets*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_logging_level ; 

__attribute__((used)) static void
FUNC4(struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
	int old_cwnd = net->cwnd;

	/* JRS - reset as if the state were being changed to timeout */
	FUNC2(&net->cc_mod.htcp_ca);
	net->ssthresh = FUNC1(net);
	net->cwnd = net->mtu;
	net->partial_bytes_acked = 0;
	if (FUNC0(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
		FUNC3(stcb, net, net->cwnd - old_cwnd, SCTP_CWND_LOG_FROM_RTX);
	}
}