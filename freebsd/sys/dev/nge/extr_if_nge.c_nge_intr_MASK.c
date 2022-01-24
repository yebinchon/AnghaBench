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
struct nge_softc {int nge_flags; struct ifnet* nge_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct nge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGE_CSR ; 
 int /*<<< orphan*/  NGE_CSR_RX_ENABLE ; 
 int NGE_FLAG_SUSPENDED ; 
 int NGE_FLAG_TBI ; 
 int /*<<< orphan*/  NGE_GPIO ; 
 int NGE_GPIO_GP3_OUT ; 
 int /*<<< orphan*/  NGE_IER ; 
 int NGE_INTRS ; 
 int /*<<< orphan*/  NGE_ISR ; 
 int NGE_ISR_RX_DESC_OK ; 
 int NGE_ISR_RX_ERR ; 
 int NGE_ISR_RX_FIFO_OFLOW ; 
 int NGE_ISR_RX_IDLE ; 
 int NGE_ISR_RX_OFLOW ; 
 int NGE_ISR_RX_OK ; 
 int NGE_ISR_SYSERR ; 
 int NGE_ISR_TX_DESC_OK ; 
 int NGE_ISR_TX_ERR ; 
 int NGE_ISR_TX_IDLE ; 
 int NGE_ISR_TX_OK ; 
 int /*<<< orphan*/  FUNC3 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct nge_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct nge_softc *sc;
	struct ifnet *ifp;
	uint32_t status;

	sc = (struct nge_softc *)arg;
	ifp = sc->nge_ifp;

	FUNC3(sc);

	if ((sc->nge_flags & NGE_FLAG_SUSPENDED) != 0)
		goto done_locked;

	/* Reading the ISR register clears all interrupts. */
	status = FUNC0(sc, NGE_ISR);
	if (status == 0xffffffff || (status & NGE_INTRS) == 0)
		goto done_locked;
#ifdef DEVICE_POLLING
	if ((ifp->if_capenable & IFCAP_POLLING) != 0)
		goto done_locked;
#endif
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		goto done_locked;

	/* Disable interrupts. */
	FUNC1(sc, NGE_IER, 0);

	/* Data LED on for TBI mode */
	if ((sc->nge_flags & NGE_FLAG_TBI) != 0)
		FUNC1(sc, NGE_GPIO,
		    FUNC0(sc, NGE_GPIO) | NGE_GPIO_GP3_OUT);

	for (; (status & NGE_INTRS) != 0;) {
		if ((status & (NGE_ISR_TX_DESC_OK | NGE_ISR_TX_ERR |
		    NGE_ISR_TX_OK | NGE_ISR_TX_IDLE)) != 0)
			FUNC9(sc);

		if ((status & (NGE_ISR_RX_DESC_OK | NGE_ISR_RX_ERR |
		    NGE_ISR_RX_OFLOW | NGE_ISR_RX_FIFO_OFLOW |
		    NGE_ISR_RX_IDLE | NGE_ISR_RX_OK)) != 0)
			FUNC7(sc);

		if ((status & NGE_ISR_RX_IDLE) != 0)
			FUNC4(sc, NGE_CSR, NGE_CSR_RX_ENABLE);

		if ((status & NGE_ISR_SYSERR) != 0) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(sc);
		}
		/* Reading the ISR register clears all interrupts. */
		status = FUNC0(sc, NGE_ISR);
	}

	/* Re-enable interrupts. */
	FUNC1(sc, NGE_IER, 1);

	if (!FUNC2(&ifp->if_snd))
		FUNC8(ifp);

	/* Data LED off for TBI mode */
	if ((sc->nge_flags & NGE_FLAG_TBI) != 0)
		FUNC1(sc, NGE_GPIO,
		    FUNC0(sc, NGE_GPIO) & ~NGE_GPIO_GP3_OUT);

done_locked:
	FUNC5(sc);
}