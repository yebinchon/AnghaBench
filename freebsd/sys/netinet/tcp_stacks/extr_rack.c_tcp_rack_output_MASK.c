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
typedef  scalar_t__ uint32_t ;
struct tcpcb {int t_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rc_tmap; int /*<<< orphan*/  rc_mtree; } ;
struct tcp_rack {scalar_t__ sack_attack_disable; TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; size_t r_rtr_cnt; scalar_t__* r_tim_lastsent; scalar_t__ r_dupack; } ;
typedef  size_t int32_t ;

/* Variables and functions */
 scalar_t__ DUP_ACK_THRESHOLD ; 
 int RACK_ACKED ; 
 int RACK_SACK_PASSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct rack_sendmap* FUNC1 (int /*<<< orphan*/ *) ; 
 int TF_SENTFIN ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct tcp_rack*,scalar_t__,scalar_t__) ; 
 struct rack_sendmap* FUNC4 (struct tcp_rack*) ; 
 scalar_t__ FUNC5 (struct tcpcb*,struct tcp_rack*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_rack*,struct rack_sendmap*,scalar_t__,scalar_t__,int) ; 

struct rack_sendmap *
FUNC7(struct tcpcb *tp, struct tcp_rack *rack, uint32_t tsused)
{
	struct rack_sendmap *rsm = NULL;
	int32_t idx;
	uint32_t srtt = 0, thresh = 0, ts_low = 0;

	/* Return the next guy to be re-transmitted */
	if (FUNC0(&rack->r_ctl.rc_mtree)) {
		return (NULL);
	}
	if (tp->t_flags & TF_SENTFIN) {
		/* retran the end FIN? */
		return (NULL);
	}
	/* ok lets look at this one */
	rsm = FUNC1(&rack->r_ctl.rc_tmap);
	if (rsm && ((rsm->r_flags & RACK_ACKED) == 0)) {
		goto check_it;
	}
	rsm = FUNC4(rack);
	if (rsm == NULL) {
		return (NULL);
	}
check_it:
	if (rsm->r_flags & RACK_ACKED) {
		return (NULL);
	}
	if ((rsm->r_flags & RACK_SACK_PASSED) == 0) {
		/* Its not yet ready */
		return (NULL);
	}
	srtt = FUNC5(tp, rack);
	idx = rsm->r_rtr_cnt - 1;
	ts_low = rsm->r_tim_lastsent[idx];
	thresh = FUNC3(rack, srtt, tsused);
	if ((tsused == ts_low) ||
	    (FUNC2(tsused, ts_low))) {
		/* No time since sending */
		return (NULL);
	}
	if ((tsused - ts_low) < thresh) {
		/* It has not been long enough yet */
		return (NULL);
	}
	if ((rsm->r_dupack >= DUP_ACK_THRESHOLD) ||
	    ((rsm->r_flags & RACK_SACK_PASSED) &&
	     (rack->sack_attack_disable == 0))) {
		/*
		 * We have passed the dup-ack threshold <or>
		 * a SACK has indicated this is missing.
		 * Note that if you are a declared attacker
		 * it is only the dup-ack threshold that
		 * will cause retransmits.
		 */
		/* log retransmit reason */
		FUNC6(rack, rsm, (tsused - ts_low), thresh, 1);
		return (rsm);
	}
	return (NULL);
}