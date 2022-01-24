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
typedef  scalar_t__ uint32_t ;
struct vtballoon_softc {scalar_t__ vtballoon_current_npages; scalar_t__ vtballoon_desired_npages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct vtballoon_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vtballoon_softc*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct vtballoon_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtballoon_softc*) ; 

__attribute__((used)) static void
FUNC5(void *xsc)
{
	struct vtballoon_softc *sc;
	uint32_t current, desired;

	sc = xsc;

	for (;;) {
		if (FUNC3(sc) != 0)
			break;

		current = sc->vtballoon_current_npages;
		desired = sc->vtballoon_desired_npages;

		if (desired != current) {
			if (desired > current)
				FUNC2(sc, desired - current);
			else
				FUNC1(sc, current - desired);

			FUNC4(sc);
		}
	}

	FUNC0();
}