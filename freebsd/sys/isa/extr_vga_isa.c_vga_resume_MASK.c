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
struct TYPE_3__ {int /*<<< orphan*/ * pal_buf; int /*<<< orphan*/  adp; int /*<<< orphan*/ * state_buf; } ;
typedef  TYPE_1__ vga_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	vga_softc_t *sc;

	sc = FUNC0(dev);

	if (sc->state_buf != NULL) {
		if (FUNC4(sc->adp, sc->state_buf) != 0)
			FUNC1(dev, "failed to reload state\n");
		FUNC2(sc->state_buf, M_TEMP);
		sc->state_buf = NULL;
	}
	if (sc->pal_buf != NULL) {
		if (FUNC3(sc->adp, sc->pal_buf) != 0)
			FUNC1(dev, "failed to reload palette\n");
		FUNC2(sc->pal_buf, M_TEMP);
		sc->pal_buf = NULL;
	}
}