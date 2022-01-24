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
struct mii_data {int dummy; } ;
struct cgem_softc {int /*<<< orphan*/  tick_ch; int /*<<< orphan*/  miibus; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgem_softc*) ; 
 int /*<<< orphan*/  cgem_tick ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC8(struct cgem_softc *sc)
{
	struct mii_data *mii;

	FUNC0(sc);

	if ((FUNC5(sc->ifp) & IFF_DRV_RUNNING) != 0)
		return;

	FUNC2(sc);
	FUNC3(sc);

	FUNC6(sc->ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);

	mii = FUNC4(sc->miibus);
	FUNC7(mii);

	FUNC1(&sc->tick_ch, hz, cgem_tick, sc);
}