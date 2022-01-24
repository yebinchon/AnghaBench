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
struct dme_softc {scalar_t__ dme_txready; scalar_t__ dme_txbusy; struct ifnet* dme_ifp; int /*<<< orphan*/  dme_tick_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dme_softc*) ; 
 int /*<<< orphan*/  DME_IMR ; 
 int /*<<< orphan*/  DME_RCR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,scalar_t__) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dme_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct dme_softc *sc)
{
	struct ifnet *ifp;

	FUNC0(sc);
	/* Disable receiver */
	FUNC3(sc, DME_RCR, 0x00);
	/* Mask interrupts */
	FUNC3(sc, DME_IMR, 0x00);
	/* Stop poll */
	FUNC2(&sc->dme_tick_ch);

	ifp = sc->dme_ifp;
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	FUNC1("dme_stop, flags %#x busy %d ready %d",
	    sc->dme_ifp->if_drv_flags, sc->dme_txbusy, sc->dme_txready);
	sc->dme_txbusy = 0;
	sc->dme_txready = 0;
}