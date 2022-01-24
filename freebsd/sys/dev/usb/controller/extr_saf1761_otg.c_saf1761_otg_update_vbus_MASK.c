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
typedef  int uint16_t ;
struct TYPE_2__ {int status_vbus; int change_connect; scalar_t__ change_suspend; scalar_t__ status_suspend; scalar_t__ status_bus_reset; } ;
struct saf1761_otg_softc {TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (struct saf1761_otg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOTG_STATUS ; 
 int SOTG_STATUS_ID ; 
 int SOTG_STATUS_VBUS_VLD ; 
 int /*<<< orphan*/  FUNC2 (struct saf1761_otg_softc*) ; 

__attribute__((used)) static void
FUNC3(struct saf1761_otg_softc *sc)
{
	uint16_t status;

	/* read fresh status */
	status = FUNC1(sc, SOTG_STATUS);

	FUNC0(4, "STATUS=0x%04x\n", status);

	if ((status & SOTG_STATUS_VBUS_VLD) &&
	    (status & SOTG_STATUS_ID)) {
		/* VBUS present and device mode */
		if (!sc->sc_flags.status_vbus) {
			sc->sc_flags.status_vbus = 1;

			/* complete root HUB interrupt endpoint */
			FUNC2(sc);
		}
	} else {
		/* VBUS not-present or host mode */
		if (sc->sc_flags.status_vbus) {
			sc->sc_flags.status_vbus = 0;
			sc->sc_flags.status_bus_reset = 0;
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 0;
			sc->sc_flags.change_connect = 1;

			/* complete root HUB interrupt endpoint */
			FUNC2(sc);
		}
	}
}