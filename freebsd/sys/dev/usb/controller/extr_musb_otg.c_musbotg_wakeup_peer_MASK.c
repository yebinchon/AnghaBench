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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  status_suspend; } ;
struct musbotg_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB2_MASK_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_POWER ; 
 int /*<<< orphan*/  FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct musbotg_softc *sc)
{
	uint8_t temp;

	if (!(sc->sc_flags.status_suspend)) {
		return;
	}

	temp = FUNC0(sc, MUSB2_REG_POWER);
	temp |= MUSB2_MASK_RESUME;
	FUNC1(sc, MUSB2_REG_POWER, temp);

	/* wait 8 milliseconds */
	/* Wait for reset to complete. */
	FUNC2(&sc->sc_bus.bus_mtx, hz / 125);

	temp = FUNC0(sc, MUSB2_REG_POWER);
	temp &= ~MUSB2_MASK_RESUME;
	FUNC1(sc, MUSB2_REG_POWER, temp);
}