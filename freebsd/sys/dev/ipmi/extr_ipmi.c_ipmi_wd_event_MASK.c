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
typedef  unsigned int uint64_t ;
struct ipmi_softc {unsigned int ipmi_watchdog_active; scalar_t__ ipmi_watchdog_actions; scalar_t__ ipmi_watchdog_pretimeout; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 unsigned int WD_INTERVAL ; 
 scalar_t__ FUNC0 (unsigned int*) ; 
 scalar_t__ dumping ; 
 int FUNC1 (struct ipmi_softc*) ; 
 int FUNC2 (struct ipmi_softc*,unsigned int) ; 
 int /*<<< orphan*/  on ; 
 scalar_t__ wd_in_shutdown ; 
 scalar_t__ wd_pretimeout_countdown ; 
 scalar_t__ wd_timer_actions ; 

__attribute__((used)) static void
FUNC3(void *arg, unsigned int cmd, int *error)
{
	struct ipmi_softc *sc = arg;
	unsigned int timeout;
	int e;

	/* Ignore requests while disabled. */
	if (!on)
		return;

	/*
	 * To prevent infinite hangs, we don't let anyone pat or change
	 * the watchdog when we're shutting down. (See ipmi_shutdown_event().)
	 * However, we do want to keep patting the watchdog while we are doing
	 * a coredump.
	 */
	if (wd_in_shutdown) {
		if (dumping && sc->ipmi_watchdog_active)
			FUNC1(sc);
		return;
	}

	cmd &= WD_INTERVAL;
	if (cmd > 0 && cmd <= 63) {
		timeout = ((uint64_t)1 << cmd) / 1000000000;
		if (timeout == 0)
			timeout = 1;
		if (timeout != sc->ipmi_watchdog_active ||
		    wd_timer_actions != sc->ipmi_watchdog_actions ||
		    wd_pretimeout_countdown != sc->ipmi_watchdog_pretimeout) {
			e = FUNC2(sc, timeout);
			if (e == 0) {
				sc->ipmi_watchdog_active = timeout;
				sc->ipmi_watchdog_actions = wd_timer_actions;
				sc->ipmi_watchdog_pretimeout = wd_pretimeout_countdown;
			} else {
				(void)FUNC2(sc, 0);
				sc->ipmi_watchdog_active = 0;
				sc->ipmi_watchdog_actions = 0;
				sc->ipmi_watchdog_pretimeout = 0;
			}
		}
		if (sc->ipmi_watchdog_active != 0) {
			e = FUNC1(sc);
			if (e == 0) {
				*error = 0;
			} else {
				(void)FUNC2(sc, 0);
				sc->ipmi_watchdog_active = 0;
				sc->ipmi_watchdog_actions = 0;
				sc->ipmi_watchdog_pretimeout = 0;
			}
		}
	} else if (FUNC0(&sc->ipmi_watchdog_active) != 0) {
		sc->ipmi_watchdog_actions = 0;
		sc->ipmi_watchdog_pretimeout = 0;

		e = FUNC2(sc, 0);
		if (e != 0 && cmd == 0)
			*error = EOPNOTSUPP;
	}
}