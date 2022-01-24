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
struct ichwd_softc {int tco_version; unsigned int timeout; scalar_t__ active; } ;

/* Variables and functions */
 unsigned int ICHWD_TCO_V3_TICK ; 
 unsigned int ICHWD_TICK ; 
 unsigned int WD_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ichwd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ichwd_softc*,unsigned int) ; 

__attribute__((used)) static void
FUNC4(void *arg, unsigned int cmd, int *error)
{
	struct ichwd_softc *sc = arg;
	unsigned int timeout;

	/* convert from power-of-two-ns to WDT ticks */
	cmd &= WD_INTERVAL;
	
	if (sc->tco_version == 3) {
		timeout = ((uint64_t)1 << cmd) / ICHWD_TCO_V3_TICK;
	} else {
		timeout = ((uint64_t)1 << cmd) / ICHWD_TICK;
	}
	
	if (cmd) {
		if (!sc->active)
			FUNC1(sc);
		if (timeout != sc->timeout)
			FUNC3(sc, timeout);
		FUNC2(sc);
		*error = 0;
	} else {
		if (sc->active)
			FUNC0(sc);
	}
}