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
typedef  int u_int32_t ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct bfe_softc {int /*<<< orphan*/  bfe_dev; struct ifnet* bfe_ifp; } ;

/* Variables and functions */
 int BFE_IMASK_DEF ; 
 int /*<<< orphan*/  BFE_ISTAT ; 
 int BFE_ISTAT_DPE ; 
 int BFE_ISTAT_DSCE ; 
 int BFE_ISTAT_ERRORS ; 
 int BFE_ISTAT_RX ; 
 int BFE_ISTAT_TX ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC11(void *xsc)
{
	struct bfe_softc *sc = xsc;
	struct ifnet *ifp;
	u_int32_t istat;

	ifp = sc->bfe_ifp;

	FUNC0(sc);

	istat = FUNC2(sc, BFE_ISTAT);

	/*
	 * Defer unsolicited interrupts - This is necessary because setting the
	 * chips interrupt mask register to 0 doesn't actually stop the
	 * interrupts
	 */
	istat &= BFE_IMASK_DEF;
	FUNC3(sc, BFE_ISTAT, istat);
	FUNC2(sc, BFE_ISTAT);

	/* not expecting this interrupt, disregard it */
	if (istat == 0 || (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC1(sc);
		return;
	}

	/* A packet was received */
	if (istat & BFE_ISTAT_RX)
		FUNC6(sc);

	/* A packet was sent */
	if (istat & BFE_ISTAT_TX)
		FUNC9(sc);

	if (istat & BFE_ISTAT_ERRORS) {

		if (istat & BFE_ISTAT_DSCE) {
			FUNC10(sc->bfe_dev, "Descriptor Error\n");
			FUNC8(sc);
			FUNC1(sc);
			return;
		}

		if (istat & BFE_ISTAT_DPE) {
			FUNC10(sc->bfe_dev,
			    "Descriptor Protocol Error\n");
			FUNC8(sc);
			FUNC1(sc);
			return;
		}
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC5(sc);
	}

	/* We have packets pending, fire them out */
	if (!FUNC4(&ifp->if_snd))
		FUNC7(ifp);

	FUNC1(sc);
}