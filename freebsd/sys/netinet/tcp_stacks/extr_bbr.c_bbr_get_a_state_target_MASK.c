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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  rc_pace_max_segs; } ;
struct tcp_bbr {TYPE_2__ r_ctl; scalar_t__ rc_last_options; TYPE_1__* rc_tp; scalar_t__ rc_use_google; } ;
struct TYPE_3__ {scalar_t__ t_maxseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_bbr*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_bbr*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct tcp_bbr*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct tcp_bbr*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC6(struct tcp_bbr *bbr, uint32_t gain)
{
	uint32_t mss, tar;

	if (bbr->rc_use_google) {
		/* Google just uses the cwnd target */
		tar = FUNC2(bbr, FUNC0(bbr), gain);
	} else {
		mss = FUNC4((bbr->rc_tp->t_maxseg - bbr->rc_last_options),
			  bbr->r_ctl.rc_pace_max_segs);
		/* Get the base cwnd with gain rounded to a mss */
		tar = FUNC5(FUNC1(bbr, FUNC0(bbr),
						      gain), mss);
		/* Make sure it is within our min */
		if (tar < FUNC3(bbr))
			return (FUNC3(bbr));
	}
	return (tar);
}