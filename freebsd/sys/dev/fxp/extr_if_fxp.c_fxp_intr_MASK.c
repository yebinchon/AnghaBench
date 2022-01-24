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
typedef  int uint8_t ;
struct fxp_softc {scalar_t__ suspended; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FXP_CSR_SCB_STATACK ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fxp_softc*) ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (struct fxp_softc*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct fxp_softc *sc = xsc;
	if_t ifp = sc->ifp;
	uint8_t statack;

	FUNC2(sc);
	if (sc->suspended) {
		FUNC3(sc);
		return;
	}

#ifdef DEVICE_POLLING
	if (if_getcapenable(ifp) & IFCAP_POLLING) {
		FXP_UNLOCK(sc);
		return;
	}
#endif
	while ((statack = FUNC0(sc, FXP_CSR_SCB_STATACK)) != 0) {
		/*
		 * It should not be possible to have all bits set; the
		 * FXP_SCB_INTR_SWI bit always returns 0 on a read.  If
		 * all bits are set, this may indicate that the card has
		 * been physically ejected, so ignore it.
		 */
		if (statack == 0xff) {
			FUNC3(sc);
			return;
		}

		/*
		 * First ACK all the interrupts in this pass.
		 */
		FUNC1(sc, FXP_CSR_SCB_STATACK, statack);
		if ((FUNC6(ifp) & IFF_DRV_RUNNING) != 0)
			FUNC4(sc, ifp, statack, -1);
	}
	FUNC3(sc);
}