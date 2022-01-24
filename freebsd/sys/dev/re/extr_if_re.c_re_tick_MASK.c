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
struct rl_softc {int rl_flags; int /*<<< orphan*/  rl_stat_callout; int /*<<< orphan*/  rl_dev; int /*<<< orphan*/  rl_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int RL_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct rl_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct rl_softc		*sc;
	struct mii_data		*mii;

	sc = xsc;

	FUNC0(sc);

	mii = FUNC2(sc->rl_miibus);
	FUNC3(mii);
	if ((sc->rl_flags & RL_FLAG_LINK) == 0)
		FUNC4(sc->rl_dev);
	/*
	 * Reclaim transmitted frames here. Technically it is not
	 * necessary to do here but it ensures periodic reclamation
	 * regardless of Tx completion interrupt which seems to be
	 * lost on PCIe based controllers under certain situations.
	 */
	FUNC5(sc);
	FUNC6(sc);
	FUNC1(&sc->rl_stat_callout, hz, re_tick, sc);
}