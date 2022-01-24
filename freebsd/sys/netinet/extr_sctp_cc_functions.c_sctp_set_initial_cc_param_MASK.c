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
struct sctphdr {int dummy; } ;
struct sctp_association {scalar_t__ max_burst; scalar_t__ sctp_cmt_on_off; int numnets; int /*<<< orphan*/  my_vtag; int /*<<< orphan*/  peers_rwnd; } ;
struct sctp_tcb {int rport; TYPE_1__* sctp_ep; struct sctp_association asoc; } ;
struct sctp_nets {int cwnd; int mtu; int /*<<< orphan*/  ssthresh; } ;
struct TYPE_2__ {int sctp_lport; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_CMT_RPV1 ; 
 scalar_t__ SCTP_CMT_RPV2 ; 
 int /*<<< orphan*/  SCTP_CWND_INITIALIZATION ; 
 int SCTP_CWND_LOGGING_ENABLE ; 
 int SCTP_CWND_MONITOR_ENABLE ; 
 int /*<<< orphan*/  SCTP_INITIAL_CWND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_nets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sctp_nets*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cwnd ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_association*,struct sctp_nets*) ; 
 int /*<<< orphan*/  sctp_initial_cwnd ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_tcb*,struct sctp_nets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_logging_level ; 

__attribute__((used)) static void
FUNC6(struct sctp_tcb *stcb, struct sctp_nets *net)
{
	struct sctp_association *assoc;
	uint32_t cwnd_in_mtu;

	assoc = &stcb->asoc;
	cwnd_in_mtu = FUNC0(sctp_initial_cwnd);
	if (cwnd_in_mtu == 0) {
		/* Using 0 means that the value of RFC 4960 is used. */
		net->cwnd = FUNC3((net->mtu * 4), FUNC2((2 * net->mtu), SCTP_INITIAL_CWND));
	} else {
		/*
		 * We take the minimum of the burst limit and the initial
		 * congestion window.
		 */
		if ((assoc->max_burst > 0) && (cwnd_in_mtu > assoc->max_burst))
			cwnd_in_mtu = assoc->max_burst;
		net->cwnd = (net->mtu - sizeof(struct sctphdr)) * cwnd_in_mtu;
	}
	if ((stcb->asoc.sctp_cmt_on_off == SCTP_CMT_RPV1) ||
	    (stcb->asoc.sctp_cmt_on_off == SCTP_CMT_RPV2)) {
		/* In case of resource pooling initialize appropriately */
		net->cwnd /= assoc->numnets;
		if (net->cwnd < (net->mtu - sizeof(struct sctphdr))) {
			net->cwnd = net->mtu - sizeof(struct sctphdr);
		}
	}
	FUNC4(assoc, net);
	net->ssthresh = assoc->peers_rwnd;
	FUNC1(sctp, cwnd, net, init,
	    stcb->asoc.my_vtag, ((stcb->sctp_ep->sctp_lport << 16) | (stcb->rport)), net,
	    0, net->cwnd);
	if (FUNC0(sctp_logging_level) &
	    (SCTP_CWND_MONITOR_ENABLE | SCTP_CWND_LOGGING_ENABLE)) {
		FUNC5(stcb, net, 0, SCTP_CWND_INITIALIZATION);
	}
}