#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ti_idx; } ;
struct TYPE_5__ {scalar_t__ ti_idx; } ;
struct TYPE_4__ {scalar_t__ ti_idx; } ;
struct ti_softc {int /*<<< orphan*/  ti_watchdog; int /*<<< orphan*/  ti_tx_saved_considx; TYPE_3__ ti_tx_considx; TYPE_2__ ti_return_prodidx; TYPE_1__ ti_ev_prodidx; struct ifnet* ti_ifp; } ;
struct ti_cmd_desc {int dummy; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  TI_CMD_CODE_STACK_DOWN ; 
 int /*<<< orphan*/  TI_CMD_HOST_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_softc*) ; 
 int /*<<< orphan*/  TI_MB_HOSTINTR ; 
 int /*<<< orphan*/  TI_TXCONS_UNSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_softc*,int,int) ; 

__attribute__((used)) static void
FUNC10(struct ti_softc *sc)
{
	struct ifnet *ifp;
	struct ti_cmd_desc cmd;

	FUNC2(sc);

	ifp = sc->ti_ifp;

	/* Disable host interrupts. */
	FUNC0(sc, TI_MB_HOSTINTR, 1);
	/*
	 * Tell firmware we're shutting down.
	 */
	FUNC1(TI_CMD_HOST_STATE, TI_CMD_CODE_STACK_DOWN, 0);

	/* Halt and reinitialize. */
	if (FUNC4(sc) == 0) {
		FUNC9(sc, 0x2000, 0x100000 - 0x2000);
		/* XXX ignore init errors. */
		FUNC4(sc);
	}

	/* Free the RX lists. */
	FUNC7(sc);

	/* Free jumbo RX list. */
	FUNC5(sc);

	/* Free mini RX list. */
	FUNC6(sc);

	/* Free TX buffers. */
	FUNC8(sc);

	sc->ti_ev_prodidx.ti_idx = 0;
	sc->ti_return_prodidx.ti_idx = 0;
	sc->ti_tx_considx.ti_idx = 0;
	sc->ti_tx_saved_considx = TI_TXCONS_UNSET;

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	FUNC3(&sc->ti_watchdog);
}