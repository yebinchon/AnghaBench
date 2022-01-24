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
typedef  int uint32_t ;
struct mge_softc {TYPE_1__* ifp; } ;
struct TYPE_2__ {int if_capenable; } ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mge_softc*) ; 
 int /*<<< orphan*/  MGE_PORT_INT_CAUSE ; 
 int /*<<< orphan*/  MGE_PORT_INT_CAUSE_EXT ; 
 int MGE_PORT_INT_EXT_TXBUF0 ; 
 int MGE_PORT_INT_EXT_TXUR ; 
 int FUNC2 (struct mge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mge_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mge_softc*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct mge_softc *sc;
	uint32_t int_cause, int_cause_ext;

	sc = arg;
	FUNC0(sc);

#ifdef DEVICE_POLLING
	if (sc->ifp->if_capenable & IFCAP_POLLING) {
		MGE_GLOBAL_UNLOCK(sc);
		return;
	}
#endif

	/* Get interrupt cause */
	int_cause = FUNC2(sc, MGE_PORT_INT_CAUSE);
	int_cause_ext = FUNC2(sc, MGE_PORT_INT_CAUSE_EXT);

	/* Check for Transmit interrupt */
	if (int_cause_ext & (MGE_PORT_INT_EXT_TXBUF0 |
	    MGE_PORT_INT_EXT_TXUR)) {
		FUNC5(sc, MGE_PORT_INT_CAUSE_EXT, ~(int_cause_ext &
		    (MGE_PORT_INT_EXT_TXBUF0 | MGE_PORT_INT_EXT_TXUR)));
		FUNC7(sc);
	}

	FUNC4(sc);

	/* Check for Receive interrupt */
	FUNC6(sc, int_cause, int_cause_ext);

	FUNC3(sc);
}