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
typedef  int /*<<< orphan*/  u_int ;
typedef  scalar_t__ u_char ;
struct TYPE_5__ {int /*<<< orphan*/  kc_arg; int /*<<< orphan*/  (* kc_func ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ kb_callback; int /*<<< orphan*/  kb_delay1; } ;
struct adb_kbd_softc {int buffers; int* buffer; int last_press; TYPE_2__ sc_kbd; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_repeater; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ADB_COMMAND_TALK ; 
 int /*<<< orphan*/  KBDIO_KEYINPUT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  akbd_repeat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adb_kbd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 struct adb_kbd_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int 
FUNC11(device_t dev, u_char status, 
    u_char command, u_char reg, int len, u_char *data)
{
	struct adb_kbd_softc *sc;

	sc = FUNC6(dev);

	if (command != ADB_COMMAND_TALK)
		return 0;

	if (reg != 0 || len != 2)
		return (0);

	FUNC8(&sc->sc_mutex);
		/* 0x7f is always the power button */
		if (data[0] == 0x7f) {
			FUNC5("PMU", "Button", "pressed", NULL);
			FUNC9(&sc->sc_mutex);
			return (0);
		} else if (data[0] == 0xff) {
			FUNC9(&sc->sc_mutex);
			return (0);	/* Ignore power button release. */
		}
		if ((data[0] & 0x7f) == 57 && sc->buffers < 7) {
			/* Fake the down/up cycle for caps lock */
			sc->buffer[sc->buffers++] = data[0] & 0x7f;
			sc->buffer[sc->buffers++] = (data[0] & 0x7f) | (1 << 7);
		} else {
			sc->buffer[sc->buffers++] = data[0];
		}
		if (sc->buffer[sc->buffers-1] < 0xff)
			sc->last_press = sc->buffer[sc->buffers-1];

		if ((data[1] & 0x7f) == 57 && sc->buffers < 7) {
			/* Fake the down/up cycle for caps lock */
			sc->buffer[sc->buffers++] = data[1] & 0x7f;
			sc->buffer[sc->buffers++] = (data[1] & 0x7f) | (1 << 7);
		} else {
			sc->buffer[sc->buffers++] = data[1];
		}

		if (sc->buffer[sc->buffers-1] < 0xff)
			sc->last_press = sc->buffer[sc->buffers-1];

		/* Stop any existing key repeating */
		FUNC3(&sc->sc_repeater);

		/* Schedule a repeat callback on keydown */
		if (!(sc->last_press & (1 << 7))) {
			FUNC2(&sc->sc_repeater, 
			    FUNC7(sc->sc_kbd.kb_delay1), akbd_repeat, sc);
		}
	FUNC9(&sc->sc_mutex);

	FUNC4(&sc->sc_cv);

	if (FUNC0(&sc->sc_kbd) && FUNC1(&sc->sc_kbd)) {
		sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
			 KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
	}

	return (0);
}