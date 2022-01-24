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
struct ums_softc {int sc_pollrate; int /*<<< orphan*/ ** sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t UMS_INTR_DT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct ums_softc *sc)
{
	int rate;

	/* Check if we should override the default polling interval */
	rate = sc->sc_pollrate;
	/* Range check rate */
	if (rate > 1000)
		rate = 1000;
	/* Check for set rate */
	if ((rate > 0) && (sc->sc_xfer[UMS_INTR_DT] != NULL)) {
		FUNC0("Setting pollrate = %d\n", rate);
		/* Stop current transfer, if any */
		FUNC2(sc->sc_xfer[UMS_INTR_DT]);
		/* Set new interval */
		FUNC3(sc->sc_xfer[UMS_INTR_DT], 1000 / rate);
		/* Only set pollrate once */
		sc->sc_pollrate = 0;
	}

	FUNC1(sc->sc_xfer[UMS_INTR_DT]);
}