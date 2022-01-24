#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
struct TYPE_2__ {scalar_t__ xl_tx_cnt; int /*<<< orphan*/ * xl_tx_head; } ;
struct xl_softc {scalar_t__ xl_wdog_timer; scalar_t__ xl_type; int /*<<< orphan*/  xl_dev; TYPE_1__ xl_cdata; struct ifnet* xl_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int FUNC0 (struct xl_softc*,int /*<<< orphan*/ ) ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*) ; 
 int XL_MEDIASTAT_CARRIER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ XL_TYPE_905B ; 
 int /*<<< orphan*/  XL_W4_MEDIA_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct xl_softc*) ; 

__attribute__((used)) static int
FUNC13(struct xl_softc *sc)
{
	struct ifnet		*ifp = sc->xl_ifp;
	u_int16_t		status = 0;
	int			misintr;

	FUNC2(sc);

	if (sc->xl_wdog_timer == 0 || --sc->xl_wdog_timer != 0)
		return (0);

	FUNC7(sc);
	FUNC10(sc);
	misintr = 0;
	if (sc->xl_type == XL_TYPE_905B) {
		FUNC12(sc);
		if (sc->xl_cdata.xl_tx_cnt == 0)
			misintr++;
	} else {
		FUNC11(sc);
		if (sc->xl_cdata.xl_tx_head == NULL)
			misintr++;
	}
	if (misintr != 0) {
		FUNC4(sc->xl_dev,
		    "watchdog timeout (missed Tx interrupts) -- recovering\n");
		return (0);
	}

	FUNC5(ifp, IFCOUNTER_OERRORS, 1);
	FUNC3(4);
	status = FUNC0(sc, XL_W4_MEDIA_STATUS);
	FUNC4(sc->xl_dev, "watchdog timeout\n");

	if (status & XL_MEDIASTAT_CARRIER)
		FUNC4(sc->xl_dev,
		    "no carrier - transceiver cable problem?\n");

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC6(sc);

	if (!FUNC1(&ifp->if_snd)) {
		if (sc->xl_type == XL_TYPE_905B)
			FUNC8(ifp);
		else
			FUNC9(ifp);
	}

	return (EJUSTRETURN);
}