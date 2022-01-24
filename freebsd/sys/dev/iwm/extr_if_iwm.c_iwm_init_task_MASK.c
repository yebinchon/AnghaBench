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
struct TYPE_2__ {scalar_t__ ic_nrunning; } ;
struct iwm_softc {int sc_flags; TYPE_1__ sc_ic; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int IWM_FLAG_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

void
FUNC6(void *arg1)
{
	struct iwm_softc *sc = arg1;

	FUNC0(sc);
	while (sc->sc_flags & IWM_FLAG_BUSY)
		FUNC4(&sc->sc_flags, &sc->sc_mtx, 0, "iwmpwr", 0);
	sc->sc_flags |= IWM_FLAG_BUSY;
	FUNC3(sc);
	if (sc->sc_ic.ic_nrunning > 0)
		FUNC2(sc);
	sc->sc_flags &= ~IWM_FLAG_BUSY;
	FUNC5(&sc->sc_flags);
	FUNC1(sc);
}