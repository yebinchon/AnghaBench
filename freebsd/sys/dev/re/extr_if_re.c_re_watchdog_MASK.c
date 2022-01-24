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
struct TYPE_2__ {scalar_t__ rl_tx_free; scalar_t__ rl_tx_desc_cnt; } ;
struct rl_softc {scalar_t__ rl_watchdog_timer; TYPE_1__ rl_ldata; struct ifnet* rl_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC8(struct rl_softc *sc)
{
	struct ifnet		*ifp;

	FUNC1(sc);

	if (sc->rl_watchdog_timer == 0 || --sc->rl_watchdog_timer != 0)
		return;

	ifp = sc->rl_ifp;
	FUNC7(sc);
	if (sc->rl_ldata.rl_tx_free == sc->rl_ldata.rl_tx_desc_cnt) {
		FUNC3(ifp, "watchdog timeout (missed Tx interrupts) "
		    "-- recovering\n");
		if (!FUNC0(&ifp->if_snd))
			FUNC6(ifp);
		return;
	}

	FUNC3(ifp, "watchdog timeout\n");
	FUNC2(ifp, IFCOUNTER_OERRORS, 1);

	FUNC5(sc, NULL);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);
	if (!FUNC0(&ifp->if_snd))
		FUNC6(ifp);
}