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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int bbr_google_discount; } ;
struct tcp_bbr {int rc_last_options; scalar_t__ rc_use_google; TYPE_2__ r_ctl; TYPE_1__* rc_tp; } ;
typedef  int int32_t ;
struct TYPE_3__ {int t_maxseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBR_SRTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BBR_UNIT ; 
 scalar_t__ USECS_IN_SECOND ; 
 scalar_t__ FUNC1 (struct tcp_bbr*,scalar_t__) ; 
 int FUNC2 (struct tcp_bbr*) ; 
 int FUNC3 (struct tcp_bbr*) ; 
 int FUNC4 (struct tcp_bbr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbr_hpts_min_time ; 
 int bbr_hptsi_max_div ; 
 int bbr_hptsi_max_mul ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_bbr*,scalar_t__,int,int,int,int,int,int) ; 

__attribute__((used)) static uint32_t
FUNC6(struct tcp_bbr *bbr, uint16_t gain, int32_t len, uint32_t cts, int nolog)
{
	uint64_t bw, lentim, res;
	uint32_t usecs, srtt, over = 0;
	uint32_t seg_oh, num_segs, maxseg;

	if (len == 0)
		return (0);

	maxseg = bbr->rc_tp->t_maxseg - bbr->rc_last_options;
	num_segs = (len + maxseg - 1) / maxseg;
	if (bbr->rc_use_google == 0) {
		seg_oh = FUNC3(bbr);
		len += (num_segs * seg_oh);
	}
	gain = FUNC1(bbr, gain);
	bw = FUNC2(bbr);
	if (bbr->rc_use_google) {
		uint64_t cbw;
		
		/* 
		 * Reduce the b/w by the google discount
		 * factor 10 = 1%.
		 */
		cbw = bw *  (uint64_t)(1000 - bbr->r_ctl.bbr_google_discount);
		cbw /= (uint64_t)1000;
		/* We don't apply a discount if it results in 0 */
		if (cbw > 0)
			bw = cbw;
	}
	lentim = ((uint64_t)len *
		  (uint64_t)USECS_IN_SECOND *
		  (uint64_t)BBR_UNIT);
	res = lentim / ((uint64_t)gain * bw);
	if (res == 0)
		res = 1;
	usecs = (uint32_t)res;
	srtt = FUNC4(bbr, BBR_SRTT);
	if (bbr_hptsi_max_mul && bbr_hptsi_max_div &&
	    (bbr->rc_use_google == 0) &&
	    (usecs > ((srtt * bbr_hptsi_max_mul) / bbr_hptsi_max_div))) {
		/*
		 * We cannot let the delay be more than 1/2 the srtt time.
		 * Otherwise we cannot pace out or send properly.
		 */
		over = usecs = (srtt * bbr_hptsi_max_mul) / bbr_hptsi_max_div;
		FUNC0(bbr_hpts_min_time);
	}
	if (!nolog)
		FUNC5(bbr, gain, len, cts, usecs, bw, over, 1);
	return (usecs);
}