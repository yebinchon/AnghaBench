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
struct g_mouse_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_cursor_update_callout; int /*<<< orphan*/  sc_button_press_callout; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  G_MOUSE_N_TRANSFER ; 
 struct g_mouse_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct g_mouse_softc *sc = FUNC1(dev);

	FUNC0("\n");

	FUNC3(&sc->sc_mtx);
	FUNC6(&sc->sc_button_press_callout);
	FUNC6(&sc->sc_cursor_update_callout);
	FUNC4(&sc->sc_mtx);

	FUNC7(sc->sc_xfer, G_MOUSE_N_TRANSFER);

	FUNC5(&sc->sc_button_press_callout);
	FUNC5(&sc->sc_cursor_update_callout);

	FUNC2(&sc->sc_mtx);

	return (0);
}