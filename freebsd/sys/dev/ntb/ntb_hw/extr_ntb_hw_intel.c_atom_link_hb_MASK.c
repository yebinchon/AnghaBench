#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ntb_softc {scalar_t__ last_ts; int /*<<< orphan*/  heartbeat_timer; int /*<<< orphan*/  lr_timer; int /*<<< orphan*/  device; } ;
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 scalar_t__ NTB_HB_TIMEOUT ; 
 scalar_t__ FUNC0 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,void (*) (void*),struct ntb_softc*) ; 
 scalar_t__ hz ; 
 scalar_t__ FUNC2 (struct ntb_softc*) ; 
 scalar_t__ FUNC3 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void FUNC5 (void*) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct ntb_softc *ntb = arg;
	sbintime_t timo, poll_ts;

	timo = NTB_HB_TIMEOUT * hz;
	poll_ts = ntb->last_ts + timo;

	/*
	 * Delay polling the link status if an interrupt was received, unless
	 * the cached link status says the link is down.
	 */
	if ((sbintime_t)ticks - poll_ts < 0 && FUNC3(ntb)) {
		timo = poll_ts - ticks;
		goto out;
	}

	if (FUNC2(ntb))
		FUNC4(ntb->device);

	if (!FUNC3(ntb) && FUNC0(ntb)) {
		/* Link is down with error, proceed with recovery */
		FUNC1(&ntb->lr_timer, 0, recover_atom_link, ntb);
		return;
	}

out:
	FUNC1(&ntb->heartbeat_timer, timo, atom_link_hb, ntb);
}