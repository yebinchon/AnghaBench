#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * txsd_status; int /*<<< orphan*/  txsd_dmap; int /*<<< orphan*/  txsd_dtag; } ;
struct et_softc {scalar_t__ watchdog_timer; TYPE_2__* ifp; TYPE_1__ sc_tx_status; } ;
struct TYPE_5__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC0 (struct et_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct et_softc *sc)
{
	uint32_t status;

	FUNC0(sc);

	if (sc->watchdog_timer == 0 || --sc->watchdog_timer)
		return (0);

	FUNC1(sc->sc_tx_status.txsd_dtag, sc->sc_tx_status.txsd_dmap,
	    BUS_DMASYNC_POSTREAD);
	status = FUNC5(*(sc->sc_tx_status.txsd_status));
	FUNC4(sc->ifp, "watchdog timed out (0x%08x) -- resetting\n",
	    status);

	FUNC3(sc->ifp, IFCOUNTER_OERRORS, 1);
	sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC2(sc);
	return (EJUSTRETURN);
}