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
struct g_keyboard_softc {int /*<<< orphan*/ * sc_xfer; scalar_t__* sc_pattern; int /*<<< orphan*/  sc_pattern_len; int /*<<< orphan*/  sc_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t G_KEYBOARD_INTR_DT ; 
 int G_KEYBOARD_MAX_STRLEN ; 
 int /*<<< orphan*/  g_keyboard_key_press_pattern ; 
 int /*<<< orphan*/  g_keyboard_mode ; 
 int /*<<< orphan*/  FUNC1 (struct g_keyboard_softc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct g_keyboard_softc *sc = arg;

	sc->sc_mode = g_keyboard_mode;

	FUNC2(sc->sc_pattern, g_keyboard_key_press_pattern, sizeof(sc->sc_pattern));

	sc->sc_pattern[G_KEYBOARD_MAX_STRLEN - 1] = 0;

	sc->sc_pattern_len = FUNC3(sc->sc_pattern);

	FUNC0(11, "Timeout %p\n", sc->sc_xfer[G_KEYBOARD_INTR_DT]);

	FUNC4(sc->sc_xfer[G_KEYBOARD_INTR_DT]);

	FUNC1(sc);
}