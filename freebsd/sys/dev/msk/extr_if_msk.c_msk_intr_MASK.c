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
typedef  int uint32_t ;
struct msk_softc {int msk_pflags; int msk_intrmask; int /*<<< orphan*/  msk_dev; struct msk_if_softc** msk_if; } ;
struct msk_if_softc {struct ifnet* msk_ifp; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B0_Y2_SP_ICR ; 
 int /*<<< orphan*/  B0_Y2_SP_ISRC2 ; 
 int FUNC0 (struct msk_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MSK_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC3 (struct msk_softc*) ; 
 size_t MSK_PORT_A ; 
 size_t MSK_PORT_B ; 
 int /*<<< orphan*/  FUNC4 (struct msk_softc*) ; 
 int SC_STAT_CLR_IRQ ; 
 int /*<<< orphan*/  STAT_CTRL ; 
 int Y2_IS_CHK_RX1 ; 
 int Y2_IS_CHK_RX2 ; 
 int Y2_IS_CHK_TXA1 ; 
 int Y2_IS_CHK_TXA2 ; 
 int Y2_IS_HW_ERR ; 
 int Y2_IS_IRQ_MAC1 ; 
 int Y2_IS_IRQ_MAC2 ; 
 int Y2_IS_IRQ_PHY1 ; 
 int Y2_IS_IRQ_PHY2 ; 
 int Y2_IS_STAT_BMU ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct msk_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct msk_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC11(void *xsc)
{
	struct msk_softc *sc;
	struct msk_if_softc *sc_if0, *sc_if1;
	struct ifnet *ifp0, *ifp1;
	uint32_t status;
	int domore;

	sc = xsc;
	FUNC3(sc);

	/* Reading B0_Y2_SP_ISRC2 masks further interrupts. */
	status = FUNC0(sc, B0_Y2_SP_ISRC2);
	if (status == 0 || status == 0xffffffff ||
	    (sc->msk_pflags & MSK_FLAG_SUSPEND) != 0 ||
	    (status & sc->msk_intrmask) == 0) {
		FUNC1(sc, B0_Y2_SP_ICR, 2);
		FUNC4(sc);
		return;
	}

	sc_if0 = sc->msk_if[MSK_PORT_A];
	sc_if1 = sc->msk_if[MSK_PORT_B];
	ifp0 = ifp1 = NULL;
	if (sc_if0 != NULL)
		ifp0 = sc_if0->msk_ifp;
	if (sc_if1 != NULL)
		ifp1 = sc_if1->msk_ifp;

	if ((status & Y2_IS_IRQ_PHY1) != 0 && sc_if0 != NULL)
		FUNC9(sc_if0);
	if ((status & Y2_IS_IRQ_PHY2) != 0 && sc_if1 != NULL)
		FUNC9(sc_if1);
	if ((status & Y2_IS_IRQ_MAC1) != 0 && sc_if0 != NULL)
		FUNC7(sc_if0);
	if ((status & Y2_IS_IRQ_MAC2) != 0 && sc_if1 != NULL)
		FUNC7(sc_if1);
	if ((status & (Y2_IS_CHK_RX1 | Y2_IS_CHK_RX2)) != 0) {
		FUNC5(sc->msk_dev, "Rx descriptor error\n");
		sc->msk_intrmask &= ~(Y2_IS_CHK_RX1 | Y2_IS_CHK_RX2);
		FUNC1(sc, B0_IMSK, sc->msk_intrmask);
		FUNC0(sc, B0_IMSK);
	}
        if ((status & (Y2_IS_CHK_TXA1 | Y2_IS_CHK_TXA2)) != 0) {
		FUNC5(sc->msk_dev, "Tx descriptor error\n");
		sc->msk_intrmask &= ~(Y2_IS_CHK_TXA1 | Y2_IS_CHK_TXA2);
		FUNC1(sc, B0_IMSK, sc->msk_intrmask);
		FUNC0(sc, B0_IMSK);
	}
	if ((status & Y2_IS_HW_ERR) != 0)
		FUNC8(sc);

	domore = FUNC6(sc);
	if ((status & Y2_IS_STAT_BMU) != 0 && domore == 0)
		FUNC1(sc, STAT_CTRL, SC_STAT_CLR_IRQ);

	/* Reenable interrupts. */
	FUNC1(sc, B0_Y2_SP_ICR, 2);

	if (ifp0 != NULL && (ifp0->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
	    !FUNC2(&ifp0->if_snd))
		FUNC10(ifp0);
	if (ifp1 != NULL && (ifp1->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
	    !FUNC2(&ifp1->if_snd))
		FUNC10(ifp1);

	FUNC4(sc);
}