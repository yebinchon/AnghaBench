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
struct g_keyboard_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/  sc_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  G_KEYBOARD_MODE_SILENT ; 
 int /*<<< orphan*/  G_KEYBOARD_N_TRANSFER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct g_keyboard_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_keyboard_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_keyboard_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct g_keyboard_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct g_keyboard_softc *sc = FUNC3(dev);
	struct usb_attach_arg *uaa = FUNC2(dev);
	int error;

	FUNC1(11, "\n");

	FUNC4(dev);

	FUNC7(&sc->sc_mtx, "g_keyboard", NULL, MTX_DEF);

	FUNC10(&sc->sc_callout, &sc->sc_mtx, 0);

	sc->sc_mode = G_KEYBOARD_MODE_SILENT;

	error = FUNC12(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, g_keyboard_config,
	    G_KEYBOARD_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("error=%s\n", FUNC11(error));
		goto detach;
	}
	FUNC8(&sc->sc_mtx);
	FUNC6(sc);
	FUNC9(&sc->sc_mtx);

	return (0);			/* success */

detach:
	FUNC5(dev);

	return (ENXIO);			/* error */
}