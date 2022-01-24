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
struct sctp_tcb {int /*<<< orphan*/  asoc; } ;
struct TYPE_4__ {int alpha; int bytes_acked; } ;
struct TYPE_3__ {TYPE_2__ htcp_ca; } ;
struct sctp_nets {scalar_t__ cwnd; scalar_t__ ssthresh; scalar_t__ flight_size; int net_ack; int mtu; int partial_bytes_acked; TYPE_1__ cc_mod; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SCTP_CWND_LOGGING_ENABLE ; 
 int /*<<< orphan*/  SCTP_CWND_LOG_FROM_CA ; 
 int /*<<< orphan*/  SCTP_CWND_LOG_FROM_SS ; 
 int /*<<< orphan*/  SCTP_CWND_LOG_NOADV_CA ; 
 int /*<<< orphan*/  SCTP_CWND_LOG_NOADV_SS ; 
 int SCTP_CWND_MONITOR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_nets*) ; 
 int /*<<< orphan*/  sctp_L2_abc_variable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sctp_nets*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_tcb*,struct sctp_nets*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_logging_level ; 

__attribute__((used)) static void
FUNC5(struct sctp_tcb *stcb, struct sctp_nets *net)
{
	/*-
	 * How to handle these functions?
         *	if (!tcp_is_cwnd_limited(sk, in_flight)) RRS - good question.
	 *		return;
	 */
	if (net->cwnd <= net->ssthresh) {
		/* We are in slow start */
		if (net->flight_size + net->net_ack >= net->cwnd) {
			if (net->net_ack > (net->mtu * FUNC0(sctp_L2_abc_variable))) {
				net->cwnd += (net->mtu * FUNC0(sctp_L2_abc_variable));
				if (FUNC0(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
					FUNC4(stcb, net, net->mtu,
					    SCTP_CWND_LOG_FROM_SS);
				}

			} else {
				net->cwnd += net->net_ack;
				if (FUNC0(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
					FUNC4(stcb, net, net->net_ack,
					    SCTP_CWND_LOG_FROM_SS);
				}

			}
			FUNC3(&stcb->asoc, net);
		} else {
			if (FUNC0(sctp_logging_level) & SCTP_CWND_LOGGING_ENABLE) {
				FUNC4(stcb, net, net->net_ack,
				    SCTP_CWND_LOG_NOADV_SS);
			}
		}
	} else {
		FUNC2(net);

		/*
		 * In dangerous area, increase slowly. In theory this is
		 * net->cwnd += alpha / net->cwnd
		 */
		/* What is snd_cwnd_cnt?? */
		if (((net->partial_bytes_acked / net->mtu * net->cc_mod.htcp_ca.alpha) >> 7) * net->mtu >= net->cwnd) {
			/*-
			 * Does SCTP have a cwnd clamp?
			 * if (net->snd_cwnd < net->snd_cwnd_clamp) - Nope (RRS).
			 */
			net->cwnd += net->mtu;
			net->partial_bytes_acked = 0;
			FUNC3(&stcb->asoc, net);
			FUNC1(&net->cc_mod.htcp_ca);
			if (FUNC0(sctp_logging_level) & SCTP_CWND_MONITOR_ENABLE) {
				FUNC4(stcb, net, net->mtu,
				    SCTP_CWND_LOG_FROM_CA);
			}
		} else {
			net->partial_bytes_acked += net->net_ack;
			if (FUNC0(sctp_logging_level) & SCTP_CWND_LOGGING_ENABLE) {
				FUNC4(stcb, net, net->net_ack,
				    SCTP_CWND_LOG_NOADV_CA);
			}
		}

		net->cc_mod.htcp_ca.bytes_acked = net->mtu;
	}
}