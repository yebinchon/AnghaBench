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
struct rl_softc {scalar_t__ rl_watchdog_timer; TYPE_1__* rl_ifp; int /*<<< orphan*/  rl_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC6(struct rl_softc *sc)
{

	FUNC0(sc);

	if (sc->rl_watchdog_timer == 0 || --sc->rl_watchdog_timer >0)
		return;

	FUNC1(sc->rl_dev, "watchdog timeout\n");
	FUNC2(sc->rl_ifp, IFCOUNTER_OERRORS, 1);

	FUNC5(sc);
	FUNC4(sc);
	sc->rl_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC3(sc);
}