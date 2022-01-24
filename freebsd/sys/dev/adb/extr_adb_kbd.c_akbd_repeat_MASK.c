#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kc_arg; int /*<<< orphan*/  (* kc_func ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  kb_delay2; TYPE_1__ kb_callback; } ;
struct adb_kbd_softc {int buffers; int* buffer; int last_press; TYPE_2__ sc_kbd; int /*<<< orphan*/  sc_repeater; int /*<<< orphan*/  sc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBDIO_KEYINPUT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct adb_kbd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *xsc) {
	struct adb_kbd_softc *sc = xsc;
	int notify_kbd = 0;

	/* Fake an up/down key repeat so long as we have the
	   free buffers */
	FUNC4(&sc->sc_mutex);
		if (sc->buffers < 7) {
			sc->buffer[sc->buffers++] = sc->last_press | (1 << 7);
			sc->buffer[sc->buffers++] = sc->last_press;

			notify_kbd = 1;
		}
	FUNC5(&sc->sc_mutex);

	if (notify_kbd && FUNC0(&sc->sc_kbd) 
	    && FUNC1(&sc->sc_kbd)) {
		sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
		    KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
	}

	/* Reschedule the callout */
	FUNC2(&sc->sc_repeater, FUNC3(sc->sc_kbd.kb_delay2),
	    akbd_repeat, sc);
}