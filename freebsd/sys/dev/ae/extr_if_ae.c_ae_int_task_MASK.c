#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_9__ {int flags; struct ifnet* ifp; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int AE_FLAG_TXAVAIL ; 
 int AE_ISR_DISABLE ; 
 int AE_ISR_DMAR_TIMEOUT ; 
 int AE_ISR_DMAW_TIMEOUT ; 
 int AE_ISR_PHY_LINKDOWN ; 
 int /*<<< orphan*/  AE_ISR_REG ; 
 int AE_ISR_RX_EVENT ; 
 int AE_ISR_TX_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,char*,int) ; 

__attribute__((used)) static void
FUNC10(void *arg, int pending)
{
	ae_softc_t *sc;
	struct ifnet *ifp;
	uint32_t val;

	sc = (ae_softc_t *)arg;

	FUNC0(sc);

	ifp = sc->ifp;

	val = FUNC1(sc, AE_ISR_REG);	/* Read interrupt status. */
	if (val == 0) {
		FUNC2(sc);
		return;
	}

	/*
	 * Clear interrupts and disable them.
	 */
	FUNC3(sc, AE_ISR_REG, val | AE_ISR_DISABLE);

#ifdef AE_DEBUG
	if_printf(ifp, "Interrupt received: 0x%08x\n", val);
#endif

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		if ((val & (AE_ISR_DMAR_TIMEOUT | AE_ISR_DMAW_TIMEOUT |
		    AE_ISR_PHY_LINKDOWN)) != 0) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC5(sc);
			FUNC2(sc);
			return;
		}
		if ((val & AE_ISR_TX_EVENT) != 0)
			FUNC8(sc);
		if ((val & AE_ISR_RX_EVENT) != 0)
			FUNC6(sc);
		/*
		 * Re-enable interrupts.
		 */
		FUNC3(sc, AE_ISR_REG, 0);

		if ((sc->flags & AE_FLAG_TXAVAIL) != 0) {
			if (!FUNC4(&ifp->if_snd))
				FUNC7(ifp);
		}
	}

	FUNC2(sc);
}