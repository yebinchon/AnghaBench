#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* kb_data; } ;
struct gpiokeys_softc {size_t sc_total_keys; int /*<<< orphan*/ * sc_keys; int /*<<< orphan*/  sc_fkeymap; int /*<<< orphan*/  sc_accmap; int /*<<< orphan*/  sc_keymap; int /*<<< orphan*/  sc_mode; TYPE_1__ sc_kbd; int /*<<< orphan*/  sc_dev; } ;
struct gpiokey {int dummy; } ;
typedef  int phandle_t ;
typedef  TYPE_1__ keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GPIOKEYS_GLOBAL_NFKEY ; 
 int /*<<< orphan*/  FUNC0 (struct gpiokeys_softc*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  KBD_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  KB_OTHER ; 
 int /*<<< orphan*/  K_XLATE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  accent_map ; 
 scalar_t__ bootverbose ; 
 struct gpiokeys_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gpiokeys_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_map ; 
 int /*<<< orphan*/ * FUNC19 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	int unit;
	struct gpiokeys_softc *sc;
	keyboard_t *kbd;
	phandle_t keys, child;
	int total_keys;

	if ((keys = FUNC20(dev)) == -1)
		return (ENXIO);

	sc = FUNC8(dev);
	sc->sc_dev = dev;
	kbd = &sc->sc_kbd;

	FUNC0(sc);
	unit = FUNC9(dev);
	FUNC16(kbd, KBD_DRIVER_NAME, KB_OTHER, unit, 0, 0, 0);

	kbd->kb_data = (void *)sc;
	sc->sc_mode = K_XLATE;

	sc->sc_keymap = key_map;
	sc->sc_accmap = accent_map;

	FUNC18(kbd, &sc->sc_keymap, &sc->sc_accmap,
	    sc->sc_fkeymap, GPIOKEYS_GLOBAL_NFKEY);

	FUNC2(kbd);

	FUNC12(kbd);

	FUNC4(kbd);

	FUNC3(kbd);

	if (FUNC17(kbd) < 0) {
		goto detach;
	}

	FUNC1(kbd);

	FUNC14(kbd);

#ifdef KBD_INSTALL_CDEV
	if (kbd_attach(kbd)) {
		goto detach;
	}
#endif

	if (bootverbose) {
		FUNC10(kbd, 1);
	}

	total_keys = 0;

	/* Traverse the 'gpio-keys' node and count keys */
	for (child = FUNC5(keys); child != 0; child = FUNC7(child)) {
		if (!FUNC6(child, "gpios"))
			continue;
		total_keys++;
	}

	if (total_keys) {
		sc->sc_keys =  FUNC19(sizeof(struct gpiokey) * total_keys,
		    M_DEVBUF, M_WAITOK | M_ZERO);

		sc->sc_total_keys = 0;
		/* Traverse the 'gpio-keys' node and count keys */
		for (child = FUNC5(keys); child != 0; child = FUNC7(child)) {
			if (!FUNC6(child, "gpios"))
				continue;
			FUNC11(sc, child ,&sc->sc_keys[sc->sc_total_keys]);
			sc->sc_total_keys++;
		}
	}

	return (0);

detach:
	FUNC13(dev);
	return (ENXIO);
}