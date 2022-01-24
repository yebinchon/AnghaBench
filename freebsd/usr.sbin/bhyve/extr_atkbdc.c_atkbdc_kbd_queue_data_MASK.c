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
struct TYPE_2__ {int bcnt; size_t bwr; int /*<<< orphan*/ * buffer; } ;
struct atkbdc_softc {TYPE_1__ kbd; int /*<<< orphan*/  outport; int /*<<< orphan*/  status; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int FIFOSZ ; 
 int /*<<< orphan*/  KBDO_KBD_OUTFULL ; 
 int /*<<< orphan*/  KBDS_KBD_BUFFER_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct atkbdc_softc *sc, uint8_t val)
{
	FUNC0(FUNC2(&sc->mtx));

	if (sc->kbd.bcnt < FIFOSZ) {
		sc->kbd.buffer[sc->kbd.bwr] = val;
		sc->kbd.bwr = (sc->kbd.bwr + 1) % FIFOSZ;
		sc->kbd.bcnt++;
		sc->status |= KBDS_KBD_BUFFER_FULL;
		sc->outport |= KBDO_KBD_OUTFULL;
	} else {
		FUNC1("atkbd data buffer full\n");
	}

	return (sc->kbd.bcnt < FIFOSZ);
}