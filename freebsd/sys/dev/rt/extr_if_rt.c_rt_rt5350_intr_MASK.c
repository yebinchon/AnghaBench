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
 int IFF_DRV_RUNNING ; 
 int RT5350_INT_RXQ0_DONE ; 
 int RT5350_INT_RXQ1_DONE ; 
 int RT5350_INT_RX_COHERENT ; 
 int RT5350_INT_TXQ0_DONE ; 
 int RT5350_INT_TXQ1_DONE ; 
 int RT5350_INT_TXQ2_DONE ; 
 int RT5350_INT_TXQ3_DONE ; 
 int RT5350_INT_TX_COHERENT ; 
 int RT5350_RX_DLY_INT ; 
 int RT5350_TX_DLY_INT ; 
 int /*<<< orphan*/  RT_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct rt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt_softc*,int) ; 

__attribute__((used)) static void
FUNC9(void *arg)
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
	
	if (status == 0xffffffff ||     /* device likely went away */
		status == 0)            /* not for us */
		return;
	
	sc->interrupts++;
	
	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
	        return;
	
	if (status & RT5350_INT_TX_COHERENT)
		FUNC6(sc);
	if (status & RT5350_INT_RX_COHERENT)
		FUNC3(sc);
	if (status & RT5350_RX_DLY_INT)
	        FUNC4(sc);
	if (status & RT5350_TX_DLY_INT)
	        FUNC7(sc);
	if (status & RT5350_INT_RXQ1_DONE)
		FUNC5(sc, 1);	
	if (status & RT5350_INT_RXQ0_DONE)
		FUNC5(sc, 0);	
	if (status & RT5350_INT_TXQ3_DONE)
		FUNC8(sc, 3);
	if (status & RT5350_INT_TXQ2_DONE)
		FUNC8(sc, 2);
	if (status & RT5350_INT_TXQ1_DONE)
		FUNC8(sc, 1);
	if (status & RT5350_INT_TXQ0_DONE)
		FUNC8(sc, 0);
}