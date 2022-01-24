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
struct arge_softc {int /*<<< orphan*/  arge_stat_callout; scalar_t__ arge_miibus; struct ifnet* arge_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_DMA_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct arge_softc *sc)
{
	struct ifnet	    *ifp;

	FUNC0(sc);

	ifp = sc->arge_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	if (sc->arge_miibus)
		FUNC6(&sc->arge_stat_callout);

	/* mask out interrupts */
	FUNC1(sc, AR71XX_DMA_INTR, 0);

	FUNC3(sc);

	/* Flush FIFO and free any existing mbufs */
	FUNC2(sc);
	FUNC4(sc);
	FUNC5(sc);
}