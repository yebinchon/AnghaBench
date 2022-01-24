#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msk_softc {int msk_num_port; int /*<<< orphan*/  msk_pflags; TYPE_2__** msk_if; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_CTST ; 
 int /*<<< orphan*/  B0_HWE_IMSK ; 
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  FUNC0 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS_RST_SET ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MSK_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC3 (struct msk_softc*) ; 
 int /*<<< orphan*/  MSK_PHY_POWERDOWN ; 
 int /*<<< orphan*/  FUNC4 (struct msk_softc*) ; 
 struct msk_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct msk_softc *sc;
	int i;

	sc = FUNC5(dev);

	FUNC3(sc);

	for (i = 0; i < sc->msk_num_port; i++) {
		if (sc->msk_if[i] != NULL && sc->msk_if[i]->msk_ifp != NULL &&
		    ((sc->msk_if[i]->msk_ifp->if_drv_flags &
		    IFF_DRV_RUNNING) != 0))
			FUNC7(sc->msk_if[i]);
	}

	/* Disable all interrupts. */
	FUNC2(sc, B0_IMSK, 0);
	FUNC0(sc, B0_IMSK);
	FUNC2(sc, B0_HWE_IMSK, 0);
	FUNC0(sc, B0_HWE_IMSK);

	FUNC6(sc, MSK_PHY_POWERDOWN);

	/* Put hardware reset. */
	FUNC1(sc, B0_CTST, CS_RST_SET);
	sc->msk_pflags |= MSK_FLAG_SUSPEND;

	FUNC4(sc);

	return (0);
}