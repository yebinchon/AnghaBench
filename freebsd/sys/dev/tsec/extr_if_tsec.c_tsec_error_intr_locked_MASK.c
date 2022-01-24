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
struct tsec_softc {struct ifnet* tsec_ifp; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int IFF_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 int TSEC_IEVENT_BABR ; 
 int TSEC_IEVENT_BABT ; 
 int TSEC_IEVENT_BSY ; 
 int TSEC_IEVENT_CRL ; 
 int TSEC_IEVENT_EBERR ; 
 int TSEC_IEVENT_LC ; 
 int TSEC_IEVENT_MSRO ; 
 int TSEC_IEVENT_RXC ; 
 int TSEC_IEVENT_TXC ; 
 int TSEC_IEVENT_TXE ; 
 int TSEC_IEVENT_XFUN ; 
 int FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_IEVENT ; 
 int /*<<< orphan*/  TSEC_REG_TSTAT ; 
 int TSEC_TSTAT_THLT ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tsec_softc*) ; 

__attribute__((used)) static void
FUNC6(struct tsec_softc *sc, int count)
{
	struct ifnet *ifp;
	uint32_t eflags;

	FUNC0(sc);

	ifp = sc->tsec_ifp;

	eflags = FUNC1(sc, TSEC_REG_IEVENT);

	/* Clear events bits in hardware */
	FUNC2(sc, TSEC_REG_IEVENT, TSEC_IEVENT_RXC | TSEC_IEVENT_BSY |
	    TSEC_IEVENT_EBERR | TSEC_IEVENT_MSRO | TSEC_IEVENT_BABT |
	    TSEC_IEVENT_TXC | TSEC_IEVENT_TXE | TSEC_IEVENT_LC |
	    TSEC_IEVENT_CRL | TSEC_IEVENT_XFUN);

	/* Check transmitter errors */
	if (eflags & TSEC_IEVENT_TXE) {
		FUNC3(ifp, IFCOUNTER_OERRORS, 1);

		if (eflags & TSEC_IEVENT_LC)
			FUNC3(ifp, IFCOUNTER_COLLISIONS, 1);

		FUNC2(sc, TSEC_REG_TSTAT, TSEC_TSTAT_THLT);
	}

	/* Check for discarded frame due to a lack of buffers */
	if (eflags & TSEC_IEVENT_BSY) {
		FUNC3(ifp, IFCOUNTER_IQDROPS, 1);
	}

	if (ifp->if_flags & IFF_DEBUG)
		FUNC4(ifp, "tsec_error_intr(): event flags: 0x%x\n",
		    eflags);

	if (eflags & TSEC_IEVENT_EBERR) {
		FUNC4(ifp, "System bus error occurred during"
		    "DMA transaction (flags: 0x%x)\n", eflags);
		FUNC5(sc);
	}

	if (eflags & TSEC_IEVENT_BABT)
		FUNC3(ifp, IFCOUNTER_OERRORS, 1);

	if (eflags & TSEC_IEVENT_BABR)
		FUNC3(ifp, IFCOUNTER_IERRORS, 1);
}