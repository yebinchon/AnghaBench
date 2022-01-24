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
struct are_softc {int /*<<< orphan*/  are_stat_callout; struct ifnet* are_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct are_softc*) ; 
 int /*<<< orphan*/  CSR_INTEN ; 
 int /*<<< orphan*/  CSR_MACCTL ; 
 int /*<<< orphan*/  CSR_OPMODE ; 
 int FUNC1 (struct are_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_RXLIST ; 
 int /*<<< orphan*/  CSR_TXLIST ; 
 int /*<<< orphan*/  FUNC2 (struct are_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int MACCTL_RE ; 
 int MACCTL_TE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct are_softc *sc)
{
	struct ifnet	    *ifp;

	FUNC0(sc);

	ifp = sc->are_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	FUNC3(&sc->are_stat_callout);

	/* Disable interrupts. */
	FUNC2(sc, CSR_INTEN, 0);

	/* Stop the transmit and receive processes. */
	FUNC2(sc, CSR_OPMODE, 0);
	FUNC2(sc, CSR_RXLIST, 0);
	FUNC2(sc, CSR_TXLIST, 0);
	FUNC2(sc, CSR_MACCTL, 
	    FUNC1(sc, CSR_MACCTL) & ~(MACCTL_TE | MACCTL_RE));

}