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
typedef  scalar_t__ uint16_t ;
struct ertt {int rtt; int minrtt; int maxrtt; } ;
struct cc_var {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ack_received ) (struct cc_var*,scalar_t__) ;int /*<<< orphan*/  (* cong_signal ) (struct cc_var*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cc_var*,int /*<<< orphan*/ ) ; 
 scalar_t__ CC_ACK ; 
 int /*<<< orphan*/  CC_ECN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int V_hd_qmin ; 
 scalar_t__ V_hd_qthresh ; 
 int /*<<< orphan*/  ertt_id ; 
 struct ertt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ newreno_cc_algo ; 
 int /*<<< orphan*/  osd ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_var*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_var*,scalar_t__) ; 
 int /*<<< orphan*/  t_flags ; 

__attribute__((used)) static void
FUNC6(struct cc_var *ccv, uint16_t ack_type)
{
	struct ertt *e_t;
	int qdly;

	if (ack_type == CC_ACK) {
		e_t = FUNC2(FUNC0(ccv, osd), ertt_id);

		if (e_t->rtt && e_t->minrtt && V_hd_qthresh > 0) {
			qdly = e_t->rtt - e_t->minrtt;

			if (qdly > V_hd_qmin &&
			    !FUNC1(FUNC0(ccv, t_flags))) {
				/* Probabilistic backoff of cwnd. */
				if (FUNC3(qdly,
				    e_t->maxrtt - e_t->minrtt)) {
					/*
					 * Update cwnd and ssthresh update to
					 * half cwnd and behave like an ECN (ie
					 * not a packet loss).
					 */
					newreno_cc_algo.cong_signal(ccv,
					    CC_ECN);
					return;
				}
			}
		}
	}
	newreno_cc_algo.ack_received(ccv, ack_type); /* As for NewReno. */
}