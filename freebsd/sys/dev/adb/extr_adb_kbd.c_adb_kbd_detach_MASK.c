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
struct adb_kbd_softc {int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_repeater; } ;
typedef  int /*<<< orphan*/  keyboard_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  KBD_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adb_kbd_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC13(device_t dev) 
{
	struct adb_kbd_softc *sc;
	keyboard_t *kbd;

	sc = FUNC3(dev);

	FUNC0(dev,0);
	FUNC1(&sc->sc_repeater);

	FUNC11(&sc->sc_mutex);

	kbd = FUNC7(FUNC6(KBD_DRIVER_NAME,
	          FUNC4(dev)));

	FUNC8(kbd);

#ifdef KBD_INSTALL_CDEV
	kbd_detach(kbd);
#endif

	FUNC9(kbd);

	FUNC12(&sc->sc_mutex);

	FUNC10(&sc->sc_mutex);
	FUNC2(&sc->sc_cv);

	return (0);
}