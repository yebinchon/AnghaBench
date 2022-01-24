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
typedef  int /*<<< orphan*/  uint8_t ;
struct cmx_softc {int /*<<< orphan*/  ch; int /*<<< orphan*/  sel; scalar_t__ polling; int /*<<< orphan*/  dev; int /*<<< orphan*/  dying; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSRBITS ; 
 int /*<<< orphan*/  BSR_BULK_IN_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLL_TICKS ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmx_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct cmx_softc *sc = xsc;
	uint8_t bsr;

	FUNC0(sc);
	if (sc->polling && !sc->dying) {
		bsr = FUNC4(sc);
		FUNC2(sc->dev, "BSR=%b\n", bsr, BSRBITS);
		if (FUNC5(bsr, BSR_BULK_IN_FULL, 1)) {
			sc->polling = 0;
			FUNC6(&sc->sel, PZERO);
		} else {
			FUNC3(&sc->ch, POLL_TICKS, cmx_tick, sc);
		}
	}
	FUNC1(sc);
}