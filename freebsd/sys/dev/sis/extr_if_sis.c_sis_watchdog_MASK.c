#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sis_softc {scalar_t__ sis_watchdog_timer; TYPE_1__* sis_ifp; int /*<<< orphan*/  sis_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(struct sis_softc *sc)
{

	FUNC1(sc);

	if (sc->sis_watchdog_timer == 0 || --sc->sis_watchdog_timer >0)
		return;

	FUNC2(sc->sis_dev, "watchdog timeout\n");
	FUNC3(sc->sis_ifp, IFCOUNTER_OERRORS, 1);

	sc->sis_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC4(sc);

	if (!FUNC0(&sc->sis_ifp->if_snd))
		FUNC5(sc->sis_ifp);
}