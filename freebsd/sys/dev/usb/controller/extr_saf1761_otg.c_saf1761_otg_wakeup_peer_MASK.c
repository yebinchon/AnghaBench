#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  status_suspend; } ;
struct saf1761_otg_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct saf1761_otg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOTG_MODE ; 
 int SOTG_MODE_SNDRSU ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct saf1761_otg_softc *sc)
{
	uint16_t temp;

	if (!(sc->sc_flags.status_suspend))
		return;

	FUNC0(5, "\n");

	temp = FUNC1(sc, SOTG_MODE);
	FUNC2(sc, SOTG_MODE, temp | SOTG_MODE_SNDRSU);
	FUNC2(sc, SOTG_MODE, temp & ~SOTG_MODE_SNDRSU);

	/* Wait 8ms for remote wakeup to complete. */
	FUNC3(&sc->sc_bus.bus_mtx, hz / 125);
}