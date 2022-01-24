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
typedef  int u_int16_t ;
struct xl_softc {scalar_t__ xl_type; struct ifnet* xl_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct xl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int XL_CMD_INTR_ACK ; 
 int /*<<< orphan*/  XL_COMMAND ; 
 int XL_INTRS ; 
 int /*<<< orphan*/  FUNC3 (struct xl_softc*) ; 
 int /*<<< orphan*/  XL_STATUS ; 
 int XL_STAT_ADFAIL ; 
 int XL_STAT_DOWN_COMPLETE ; 
 int XL_STAT_STATSOFLOW ; 
 int XL_STAT_TX_COMPLETE ; 
 int XL_STAT_UP_COMPLETE ; 
 scalar_t__ XL_TYPE_905B ; 
 int /*<<< orphan*/  FUNC4 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xl_softc*) ; 
 scalar_t__ FUNC7 (struct xl_softc*) ; 
 scalar_t__ FUNC8 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC15(void *arg)
{
	struct xl_softc		*sc = arg;
	struct ifnet		*ifp = sc->xl_ifp;
	u_int16_t		status;

	FUNC3(sc);

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING) {
		XL_UNLOCK(sc);
		return;
	}
#endif

	for (;;) {
		status = FUNC0(sc, XL_STATUS);
		if ((status & XL_INTRS) == 0 || status == 0xFFFF)
			break;
		FUNC1(sc, XL_COMMAND,
		    XL_CMD_INTR_ACK|(status & XL_INTRS));
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
			break;

		if (status & XL_STAT_UP_COMPLETE) {
			if (FUNC8(sc) == 0) {
				while (FUNC7(sc))
					FUNC8(sc);
			}
		}

		if (status & XL_STAT_DOWN_COMPLETE) {
			if (sc->xl_type == XL_TYPE_905B)
				FUNC14(sc);
			else
				FUNC13(sc);
		}

		if (status & XL_STAT_TX_COMPLETE) {
			FUNC5(ifp, IFCOUNTER_OERRORS, 1);
			FUNC12(sc);
		}

		if (status & XL_STAT_ADFAIL) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(sc);
			break;
		}

		if (status & XL_STAT_STATSOFLOW)
			FUNC11(sc);
	}

	if (!FUNC2(&ifp->if_snd) &&
	    ifp->if_drv_flags & IFF_DRV_RUNNING) {
		if (sc->xl_type == XL_TYPE_905B)
			FUNC9(ifp);
		else
			FUNC10(ifp);
	}

	FUNC4(sc);
}