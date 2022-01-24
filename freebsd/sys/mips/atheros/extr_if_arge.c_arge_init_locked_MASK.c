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
struct ifnet {int if_flags; int if_drv_flags; } ;
struct arge_softc {int arge_link_status; int /*<<< orphan*/  arge_stat_callout; scalar_t__ arge_miibus; int /*<<< orphan*/  arge_dev; struct ifnet* arge_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_DMA_INTR ; 
 int /*<<< orphan*/  AR71XX_DMA_RX_CONTROL ; 
 int /*<<< orphan*/  AR71XX_DMA_RX_DESC ; 
 int /*<<< orphan*/  AR71XX_DMA_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct arge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct arge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_INTR_ALL ; 
 int /*<<< orphan*/  DMA_RX_CONTROL_EN ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC4 (struct arge_softc*) ; 
 scalar_t__ FUNC5 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct arge_softc*) ; 
 int /*<<< orphan*/  arge_tick ; 
 int /*<<< orphan*/  FUNC7 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arge_softc*) ; 
 struct mii_data* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC12 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC13(struct arge_softc *sc)
{
	struct ifnet		*ifp = sc->arge_ifp;
	struct mii_data		*mii;

	FUNC0(sc);

	if ((ifp->if_flags & IFF_UP) && (ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	/* Init circular RX list. */
	if (FUNC5(sc) != 0) {
		FUNC11(sc->arge_dev,
		    "initialization failed: no memory for rx buffers\n");
		FUNC6(sc);
		return;
	}

	/* Init tx descriptors. */
	FUNC7(sc);

	FUNC4(sc);

	if (sc->arge_miibus) {
		mii = FUNC10(sc->arge_miibus);
		FUNC12(mii);
	}
	else {
		/*
		 * Sun always shines over multiPHY interface
		 */
		sc->arge_link_status = 1;
	}

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	if (sc->arge_miibus) {
		FUNC9(&sc->arge_stat_callout, hz, arge_tick, sc);
		FUNC8(sc);
	}

	FUNC3(sc, AR71XX_DMA_TX_DESC, FUNC2(sc, 0));
	FUNC3(sc, AR71XX_DMA_RX_DESC, FUNC1(sc, 0));

	/* Start listening */
	FUNC3(sc, AR71XX_DMA_RX_CONTROL, DMA_RX_CONTROL_EN);

	/* Enable interrupts */
	FUNC3(sc, AR71XX_DMA_INTR, DMA_INTR_ALL);
}