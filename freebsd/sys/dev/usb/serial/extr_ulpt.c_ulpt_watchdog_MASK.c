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
struct ulpt_softc {scalar_t__ sc_fflags; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 size_t ULPT_INTR_DT_RD ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ulpt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct ulpt_softc *sc = arg;

	FUNC0(&sc->sc_mtx, MA_OWNED);

	/* 
	 * Only read status while the device is not opened, due to
	 * possible hardware or firmware bug in some printers.
	 */
	if (sc->sc_fflags == 0)
		FUNC2(sc->sc_xfer[ULPT_INTR_DT_RD]);

	FUNC1(&sc->sc_watchdog,
	    hz, &ulpt_watchdog, sc);
}