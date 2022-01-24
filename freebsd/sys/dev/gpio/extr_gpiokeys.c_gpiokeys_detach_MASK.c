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
struct gpiokeys_softc {int sc_total_keys; int /*<<< orphan*/ * sc_keys; } ;
typedef  int /*<<< orphan*/  keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int /*<<< orphan*/  KBD_DRIVER_NAME ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 struct gpiokeys_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpiokeys_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct gpiokeys_softc *sc;
	keyboard_t *kbd;
	int i;

	sc = FUNC1(dev);

	for (i = 0; i < sc->sc_total_keys; i++)
		FUNC4(sc, &sc->sc_keys[i]);

	kbd = FUNC7(FUNC6(KBD_DRIVER_NAME,
	    FUNC2(dev)));

#ifdef KBD_INSTALL_CDEV
	kbd_detach(kbd);
#endif
	FUNC8(kbd);

	FUNC0(sc);
	if (sc->sc_keys)
		FUNC3(sc->sc_keys, M_DEVBUF);

	return (0);
}