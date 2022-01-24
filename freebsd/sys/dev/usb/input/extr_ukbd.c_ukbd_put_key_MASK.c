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
typedef  int uint32_t ;
struct ukbd_softc {size_t sc_inputs; int* sc_input; size_t sc_inputtail; int /*<<< orphan*/ * sc_evdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EVDEV_RCPT_HW_KBD ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int KEY_RELEASE ; 
 size_t UKBD_IN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int evdev_rcpt_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ukbd_softc *sc, uint32_t key)
{

	FUNC2();

	FUNC0("0x%02x (%d) %s\n", key, key,
	    (key & KEY_RELEASE) ? "released" : "pressed");

#ifdef EVDEV_SUPPORT
	if (evdev_rcpt_mask & EVDEV_RCPT_HW_KBD && sc->sc_evdev != NULL) {
		evdev_push_event(sc->sc_evdev, EV_KEY,
		    evdev_hid2key(KEY_INDEX(key)), !(key & KEY_RELEASE));
		evdev_sync(sc->sc_evdev);
	}
#endif

	if (sc->sc_inputs < UKBD_IN_BUF_SIZE) {
		sc->sc_input[sc->sc_inputtail] = key;
		++(sc->sc_inputs);
		++(sc->sc_inputtail);
		if (sc->sc_inputtail >= UKBD_IN_BUF_SIZE) {
			sc->sc_inputtail = 0;
		}
	} else {
		FUNC0("input buffer is full\n");
	}
}