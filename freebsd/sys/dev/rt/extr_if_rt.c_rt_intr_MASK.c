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
struct rt_softc {int /*<<< orphan*/  interrupts; int /*<<< orphan*/  fe_int_status; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int CNT_GDM_AF ; 
 int CNT_PPE_AF ; 
 int GDM_CRC_DROP ; 
 int GDM_OTHER_DROP ; 
 int IFF_DRV_RUNNING ; 
 int INT_RX_COHERENT ; 
 int INT_RX_DONE ; 
 int INT_TXQ0_DONE ; 
 int INT_TXQ1_DONE ; 
 int INT_TXQ2_DONE ; 
 int INT_TXQ3_DONE ; 
 int INT_TX_COHERENT ; 
 int PSE_BUF_DROP ; 
 int PSE_FQ_EMPTY ; 
 int PSE_P0_FC ; 
 int PSE_P1_FC ; 
 int PSE_P2_FC ; 
 int /*<<< orphan*/  RT_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct rt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*,int /*<<< orphan*/ ,int) ; 
 int RX_DLY_INT ; 
 int TX_DLY_INT ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct rt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct rt_softc*,int) ; 

__attribute__((used)) static void
FUNC18(void *arg)
{
	struct rt_softc *sc;
	struct ifnet *ifp;
	uint32_t status;

	sc = arg;
	ifp = sc->ifp;

	/* acknowledge interrupts */
	status = FUNC1(sc, sc->fe_int_status);
	FUNC2(sc, sc->fe_int_status, status);

	FUNC0(sc, RT_DEBUG_INTR, "interrupt: status=0x%08x\n", status);

	if (status == 0xffffffff ||	/* device likely went away */
		status == 0)		/* not for us */
		return;

	sc->interrupts++;

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	if (status & CNT_PPE_AF)
		FUNC4(sc);

	if (status & CNT_GDM_AF)
		FUNC3(sc);

	if (status & PSE_P2_FC)
		FUNC11(sc);

	if (status & GDM_CRC_DROP)
		FUNC5(sc);

	if (status & PSE_BUF_DROP)
		FUNC7(sc);

	if (status & GDM_OTHER_DROP)
		FUNC6(sc);

	if (status & PSE_P1_FC)
		FUNC10(sc);

	if (status & PSE_P0_FC)
		FUNC9(sc);

	if (status & PSE_FQ_EMPTY)
		FUNC8(sc);

	if (status & INT_TX_COHERENT)
		FUNC15(sc);

	if (status & INT_RX_COHERENT)
		FUNC12(sc);

	if (status & RX_DLY_INT)
		FUNC13(sc);

	if (status & TX_DLY_INT)
		FUNC16(sc);

	if (status & INT_RX_DONE)
		FUNC14(sc, 0);

	if (status & INT_TXQ3_DONE)
		FUNC17(sc, 3);

	if (status & INT_TXQ2_DONE)
		FUNC17(sc, 2);

	if (status & INT_TXQ1_DONE)
		FUNC17(sc, 1);

	if (status & INT_TXQ0_DONE)
		FUNC17(sc, 0);
}