#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct g_mouse_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/  sc_cursor_update_callout; int /*<<< orphan*/  sc_button_press_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  G_MOUSE_MODE_SILENT ; 
 int /*<<< orphan*/  G_MOUSE_N_TRANSFER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct g_mouse_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct g_mouse_softc*) ; 
 int /*<<< orphan*/  g_mouse_config ; 
 int /*<<< orphan*/  FUNC6 (struct g_mouse_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct g_mouse_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct g_mouse_softc *sc = FUNC3(dev);
	struct usb_attach_arg *uaa = FUNC2(dev);
	int error;

	FUNC1(11, "\n");

	FUNC4(dev);

	FUNC8(&sc->sc_mtx, "g_mouse", NULL, MTX_DEF);

	FUNC11(&sc->sc_button_press_callout, &sc->sc_mtx, 0);
	FUNC11(&sc->sc_cursor_update_callout, &sc->sc_mtx, 0);

	sc->sc_mode = G_MOUSE_MODE_SILENT;

	error = FUNC13(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, g_mouse_config,
	    G_MOUSE_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("error=%s\n", FUNC12(error));
		goto detach;
	}

	FUNC9(&sc->sc_mtx);
	FUNC5(sc);
	FUNC6(sc);
	FUNC10(&sc->sc_mtx);

	return (0);			/* success */

detach:
	FUNC7(dev);

	return (ENXIO);			/* error */
}