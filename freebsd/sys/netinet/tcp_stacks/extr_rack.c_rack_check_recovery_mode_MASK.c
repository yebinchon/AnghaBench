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
struct tcpcb {int /*<<< orphan*/  snd_ssthresh; int /*<<< orphan*/  snd_cwnd; scalar_t__ t_fb_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  rc_ssthresh_at; int /*<<< orphan*/  rc_cwnd_at; int /*<<< orphan*/  rc_rsm_start; int /*<<< orphan*/  rc_tmap; int /*<<< orphan*/  rc_mtree; } ;
struct tcp_rack {TYPE_1__ r_ctl; } ;
struct rack_sendmap {int r_flags; size_t r_rtr_cnt; scalar_t__* r_tim_lastsent; int /*<<< orphan*/  r_start; } ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NDUPACK ; 
 int RACK_ACKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct rack_sendmap* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct tcp_rack*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rack_sendmap* FUNC4 (struct tcp_rack*) ; 
 scalar_t__ FUNC5 (struct tcpcb*,struct tcp_rack*) ; 

__attribute__((used)) static struct rack_sendmap *
FUNC6(struct tcpcb *tp, uint32_t tsused)
{
	/*
	 * Check to see that we don't need to fall into recovery. We will
	 * need to do so if our oldest transmit is past the time we should
	 * have had an ack.
	 */
	struct tcp_rack *rack;
	struct rack_sendmap *rsm;
	int32_t idx;
	uint32_t srtt, thresh;

	rack = (struct tcp_rack *)tp->t_fb_ptr;
	if (FUNC0(&rack->r_ctl.rc_mtree)) {
		return (NULL);
	}
	rsm = FUNC1(&rack->r_ctl.rc_tmap);
	if (rsm == NULL)
		return (NULL);

	if (rsm->r_flags & RACK_ACKED) {
		rsm = FUNC4(rack);
		if (rsm == NULL)
			return (NULL);
	}
	idx = rsm->r_rtr_cnt - 1;
	srtt = FUNC5(tp, rack);
	thresh = FUNC2(rack, srtt, tsused);
	if (tsused < rsm->r_tim_lastsent[idx]) {
		return (NULL);
	}
	if ((tsused - rsm->r_tim_lastsent[idx]) < thresh) {
		return (NULL);
	}
	/* Ok if we reach here we are over-due */
	rack->r_ctl.rc_rsm_start = rsm->r_start;
	rack->r_ctl.rc_cwnd_at = tp->snd_cwnd;
	rack->r_ctl.rc_ssthresh_at = tp->snd_ssthresh;
	FUNC3(tp, NULL, CC_NDUPACK);
	return (rsm);
}