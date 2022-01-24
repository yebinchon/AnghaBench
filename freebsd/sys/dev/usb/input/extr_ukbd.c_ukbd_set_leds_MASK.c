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
struct ukbd_softc {int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_leds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t UKBD_CTRL_LED ; 
 int /*<<< orphan*/  UKBD_FLAG_SET_LEDS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ukbd_softc *sc, uint8_t leds)
{

	FUNC1();
	FUNC0("leds=0x%02x\n", leds);

	sc->sc_leds = leds;
	sc->sc_flags |= UKBD_FLAG_SET_LEDS;

	/* start transfer, if not already started */

	FUNC2(sc->sc_xfer[UKBD_CTRL_LED]);
}