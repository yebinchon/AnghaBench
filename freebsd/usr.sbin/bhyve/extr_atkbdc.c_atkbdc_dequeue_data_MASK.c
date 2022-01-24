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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ bcnt; size_t brd; int /*<<< orphan*/ * buffer; } ;
struct atkbdc_softc {int status; TYPE_1__ kbd; int /*<<< orphan*/  ps2mouse_sc; int /*<<< orphan*/  outport; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FIFOSZ ; 
 int /*<<< orphan*/  KBDO_AUX_OUTFULL ; 
 int /*<<< orphan*/  KBDO_KBD_OUTFULL ; 
 int KBDS_AUX_BUFFER_FULL ; 
 int KBDS_KBD_BUFFER_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atkbdc_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct atkbdc_softc *sc, uint8_t *buf)
{
	FUNC0(FUNC4(&sc->mtx));

	if (FUNC3(sc->ps2mouse_sc, buf) == 0) {
		if (FUNC2(sc->ps2mouse_sc) == 0) {
			if (sc->kbd.bcnt == 0)
				sc->status &= ~(KBDS_AUX_BUFFER_FULL |
				                KBDS_KBD_BUFFER_FULL);
			else
				sc->status &= ~(KBDS_AUX_BUFFER_FULL);
			sc->outport &= ~KBDO_AUX_OUTFULL;
		}

		FUNC1(sc);
		return;
	}

	if (sc->kbd.bcnt > 0) {
		*buf = sc->kbd.buffer[sc->kbd.brd];
		sc->kbd.brd = (sc->kbd.brd + 1) % FIFOSZ;
		sc->kbd.bcnt--;
		if (sc->kbd.bcnt == 0) {
			sc->status &= ~KBDS_KBD_BUFFER_FULL;
			sc->outport &= ~KBDO_KBD_OUTFULL;
		}

		FUNC1(sc);
	}

	if (FUNC2(sc->ps2mouse_sc) == 0 && sc->kbd.bcnt == 0) {
		sc->status &= ~(KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL);
	}
}