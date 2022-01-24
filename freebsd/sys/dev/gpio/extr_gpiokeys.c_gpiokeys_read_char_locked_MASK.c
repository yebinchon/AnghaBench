#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct gpiokeys_softc {scalar_t__ sc_mode; int /*<<< orphan*/  sc_accents; int /*<<< orphan*/  sc_state; } ;
struct TYPE_5__ {int /*<<< orphan*/  kb_count; struct gpiokeys_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ K_CODE ; 
 scalar_t__ K_RAW ; 
 scalar_t__ NOKEY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ SCAN_RELEASE ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct gpiokeys_softc*,int) ; 

__attribute__((used)) static uint32_t
FUNC4(keyboard_t *kbd, int wait)
{
	struct gpiokeys_softc *sc = kbd->kb_data;
	uint32_t action;
	uint32_t keycode;

	if (!FUNC0(kbd))
		return (NOKEY);

next_code:

	/* see if there is something in the keyboard port */
	/* XXX */
	keycode = FUNC3(sc, (wait == FALSE) ? 0 : 1);
	++kbd->kb_count;

	/* return the byte as is for the K_RAW mode */
	if (sc->sc_mode == K_RAW) {
		return (keycode);
	}

	/* return the key code in the K_CODE mode */
	/* XXX: keycode |= SCAN_RELEASE; */

	if (sc->sc_mode == K_CODE) {
		return (keycode);
	}

	/* keycode to key action */
	action = FUNC2(kbd, FUNC1(keycode),
	    (keycode & SCAN_RELEASE),
	    &sc->sc_state, &sc->sc_accents);
	if (action == NOKEY) {
		goto next_code;
	}

	return (action);
}