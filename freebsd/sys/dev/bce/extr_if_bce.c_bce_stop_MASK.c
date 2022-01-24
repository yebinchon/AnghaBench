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
struct ifnet {int if_drv_flags; } ;
struct bce_softc {int /*<<< orphan*/  bce_link_up; scalar_t__ watchdog_timer; int /*<<< orphan*/  bce_tick_callout; struct ifnet* bce_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int /*<<< orphan*/  BCE_MISC_ENABLE_CLR_BITS ; 
 int /*<<< orphan*/  BCE_MISC_ENABLE_CLR_DEFAULT ; 
 int /*<<< orphan*/  BCE_VERBOSE_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bce_softc*) ; 
 scalar_t__ bce_hdr_split ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct bce_softc *sc)
{
	struct ifnet *ifp;

	FUNC1(BCE_VERBOSE_RESET);

	FUNC0(sc);

	ifp = sc->bce_ifp;

	FUNC10(&sc->bce_tick_callout);

	/* Disable the transmit/receive blocks. */
	FUNC5(sc, BCE_MISC_ENABLE_CLR_BITS, BCE_MISC_ENABLE_CLR_DEFAULT);
	FUNC4(sc, BCE_MISC_ENABLE_CLR_BITS);
	FUNC3(20);

	FUNC6(sc);

	/* Free RX buffers. */
	if (bce_hdr_split == TRUE) {
		FUNC7(sc);
	}
	FUNC8(sc);

	/* Free TX buffers. */
	FUNC9(sc);

	sc->watchdog_timer = 0;

	sc->bce_link_up = FALSE;

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	FUNC2(BCE_VERBOSE_RESET);
}