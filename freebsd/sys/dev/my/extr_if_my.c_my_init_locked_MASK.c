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
typedef  int /*<<< orphan*/  u_int16_t ;
struct my_softc {int /*<<< orphan*/  my_watchdog; int /*<<< orphan*/ * my_pinfo; TYPE_2__* my_ldata; int /*<<< orphan*/  my_dev; TYPE_1__* my_info; scalar_t__ my_autoneg; struct ifnet* my_ifp; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * my_tx_list; int /*<<< orphan*/ * my_rx_list; } ;
struct TYPE_3__ {scalar_t__ my_did; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ENOBUFS ; 
 int IFF_BROADCAST ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 scalar_t__ MTD891ID ; 
 int /*<<< orphan*/  MY_AB ; 
 int /*<<< orphan*/  MY_BCR ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MY_Enhanced ; 
 int /*<<< orphan*/  MY_IMR ; 
 int MY_INTRS ; 
 int /*<<< orphan*/  MY_ISR ; 
 int /*<<< orphan*/  FUNC2 (struct my_softc*) ; 
 int MY_PBL8 ; 
 int /*<<< orphan*/  MY_PROG ; 
 int /*<<< orphan*/  MY_PROM ; 
 int MY_RBLEN ; 
 int /*<<< orphan*/  MY_RE ; 
 int MY_RPBLE512 ; 
 int /*<<< orphan*/  MY_RXLBA ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MY_TCRRCR ; 
 int /*<<< orphan*/  MY_TE ; 
 int MY_TFTSF ; 
 int /*<<< orphan*/  MY_TXLBA ; 
 int /*<<< orphan*/  PHY_BMCR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct my_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC6 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct my_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct my_softc*) ; 
 int /*<<< orphan*/  my_watchdog ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct my_softc *sc)
{
	struct ifnet   *ifp = sc->my_ifp;
	u_int16_t       phy_bmcr = 0;

	FUNC2(sc);
	if (sc->my_autoneg) {
		return;
	}
	if (sc->my_pinfo != NULL)
		phy_bmcr = FUNC8(sc, PHY_BMCR);
	/*
	 * Cancel pending I/O and free all RX/TX buffers.
	 */
	FUNC13(sc);
	FUNC10(sc);

	/*
	 * Set cache alignment and burst length.
	 */
#if 0				/* 89/9/1 modify,  */
	CSR_WRITE_4(sc, MY_BCR, MY_RPBLE512);
	CSR_WRITE_4(sc, MY_TCRRCR, MY_TFTSF);
#endif
	FUNC0(sc, MY_BCR, MY_PBL8);
	FUNC0(sc, MY_TCRRCR, MY_TFTSF | MY_RBLEN | MY_RPBLE512);
	/*
	 * 89/12/29 add, for mtd891,
	 */
	if (sc->my_info->my_did == MTD891ID) {
		FUNC3(sc, MY_BCR, MY_PROG);
		FUNC3(sc, MY_TCRRCR, MY_Enhanced);
	}
	FUNC11(sc, phy_bmcr);
	/* Init circular RX list. */
	if (FUNC6(sc) == ENOBUFS) {
		FUNC5(sc->my_dev, "init failed: no memory for rx buffers\n");
		FUNC13(sc);
		return;
	}
	/* Init TX descriptors. */
	FUNC7(sc);

	/* If we want promiscuous mode, set the allframes bit. */
	if (ifp->if_flags & IFF_PROMISC)
		FUNC3(sc, MY_TCRRCR, MY_PROM);
	else
		FUNC1(sc, MY_TCRRCR, MY_PROM);

	/*
	 * Set capture broadcast bit to capture broadcast frames.
	 */
	if (ifp->if_flags & IFF_BROADCAST)
		FUNC3(sc, MY_TCRRCR, MY_AB);
	else
		FUNC1(sc, MY_TCRRCR, MY_AB);

	/*
	 * Program the multicast filter, if necessary.
	 */
	FUNC12(sc);

	/*
	 * Load the address of the RX list.
	 */
	FUNC1(sc, MY_TCRRCR, MY_RE);
	FUNC0(sc, MY_RXLBA, FUNC14(&sc->my_ldata->my_rx_list[0]));

	/*
	 * Enable interrupts.
	 */
	FUNC0(sc, MY_IMR, MY_INTRS);
	FUNC0(sc, MY_ISR, 0xFFFFFFFF);

	/* Enable receiver and transmitter. */
	FUNC3(sc, MY_TCRRCR, MY_RE);
	FUNC1(sc, MY_TCRRCR, MY_TE);
	FUNC0(sc, MY_TXLBA, FUNC14(&sc->my_ldata->my_tx_list[0]));
	FUNC3(sc, MY_TCRRCR, MY_TE);

	/* Restore state of BMCR */
	if (sc->my_pinfo != NULL)
		FUNC9(sc, PHY_BMCR, phy_bmcr);
	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	FUNC4(&sc->my_watchdog, hz, my_watchdog, sc);
	return;
}