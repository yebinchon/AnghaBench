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
struct rl_softc {int rl_flags; scalar_t__ suspended; struct ifnet* rl_ifp; } ;
struct ifnet {int if_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_UP ; 
 int RL_FLAG_MACSLEEP ; 
 int /*<<< orphan*/  RL_GPIO ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*) ; 
 int /*<<< orphan*/  RL_MACDBG ; 
 int /*<<< orphan*/  FUNC3 (struct rl_softc*) ; 
 struct rl_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rl_softc*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct rl_softc		*sc;
	struct ifnet		*ifp;

	sc = FUNC4(dev);

	FUNC2(sc);

	ifp = sc->rl_ifp;
	/* Take controller out of sleep mode. */
	if ((sc->rl_flags & RL_FLAG_MACSLEEP) != 0) {
		if ((FUNC0(sc, RL_MACDBG) & 0x80) == 0x80)
			FUNC1(sc, RL_GPIO,
			    FUNC0(sc, RL_GPIO) | 0x01);
	}

	/*
	 * Clear WOL matching such that normal Rx filtering
	 * wouldn't interfere with WOL patterns.
	 */
	FUNC5(sc);

	/* reinitialize interface if necessary */
	if (ifp->if_flags & IFF_UP)
		FUNC6(sc);

	sc->suspended = 0;
	FUNC3(sc);

	return (0);
}