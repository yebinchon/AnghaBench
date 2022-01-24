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
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct et_softc {int sc_timer; int /*<<< orphan*/  dev; struct ifnet* ifp; } ;

/* Variables and functions */
 int FUNC0 (struct et_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*,int /*<<< orphan*/ ,int) ; 
 int ET_INTRS ; 
 int /*<<< orphan*/  ET_INTR_MASK ; 
 int ET_INTR_RXDMA ; 
 int ET_INTR_RXDMA_ERROR ; 
 int /*<<< orphan*/  ET_INTR_STATUS ; 
 int ET_INTR_TIMER ; 
 int ET_INTR_TXDMA ; 
 int ET_INTR_TXDMA_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct et_softc*) ; 
 int /*<<< orphan*/  ET_TIMER ; 
 int /*<<< orphan*/  FUNC3 (struct et_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct et_softc*) ; 

__attribute__((used)) static void
FUNC10(void *xsc)
{
	struct et_softc *sc;
	struct ifnet *ifp;
	uint32_t status;

	sc = xsc;
	FUNC2(sc);
	ifp = sc->ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		goto done;

	status = FUNC0(sc, ET_INTR_STATUS);
	if ((status & ET_INTRS) == 0)
		goto done;

	/* Disable further interrupts. */
	FUNC1(sc, ET_INTR_MASK, 0xffffffff);

	if (status & (ET_INTR_RXDMA_ERROR | ET_INTR_TXDMA_ERROR)) {
		FUNC5(sc->dev, "DMA error(0x%08x) -- resetting\n",
		    status);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC6(sc);
		FUNC3(sc);
		return;
	}
	if (status & ET_INTR_RXDMA)
		FUNC7(sc);
	if (status & (ET_INTR_TXDMA | ET_INTR_TIMER))
		FUNC9(sc);
	if (status & ET_INTR_TIMER)
		FUNC1(sc, ET_TIMER, sc->sc_timer);
	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		FUNC1(sc, ET_INTR_MASK, ~ET_INTRS);
		if (!FUNC4(&ifp->if_snd))
			FUNC8(ifp);
	}
done:
	FUNC3(sc);
}