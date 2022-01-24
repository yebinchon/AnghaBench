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
struct uhid_snes_softc {scalar_t__ sc_fflags; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/ * sc_transfer; int /*<<< orphan*/  sc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 size_t UHID_SNES_STATUS_DT_RD ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct uhid_snes_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct uhid_snes_softc *sc = arg;

	FUNC0(&sc->sc_mutex, MA_OWNED);

	if (sc->sc_fflags == 0)
		FUNC2(sc->sc_transfer[UHID_SNES_STATUS_DT_RD]);

	FUNC1(&sc->sc_watchdog, hz, &uhid_snes_watchdog, sc);
}