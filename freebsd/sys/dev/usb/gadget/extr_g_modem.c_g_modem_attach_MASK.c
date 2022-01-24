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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct g_modem_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  G_MODEM_MODE_SILENT ; 
 int /*<<< orphan*/  G_MODEM_N_TRANSFER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct g_modem_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_modem_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_modem_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_modem_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct g_modem_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct g_modem_softc *sc = FUNC3(dev);
	struct usb_attach_arg *uaa = FUNC2(dev);
	int error;
	uint8_t iface_index[2];

	FUNC1(11, "\n");

	FUNC4(dev);

	FUNC8(&sc->sc_mtx, "g_modem", NULL, MTX_DEF);

	FUNC11(&sc->sc_callout, &sc->sc_mtx, 0);
	FUNC11(&sc->sc_watchdog, &sc->sc_mtx, 0);

	sc->sc_mode = G_MODEM_MODE_SILENT;

	iface_index[0] = uaa->info.bIfaceIndex;
	iface_index[1] = uaa->info.bIfaceIndex + 1;

	error = FUNC14(uaa->device,
	    iface_index, sc->sc_xfer, g_modem_config,
	    G_MODEM_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("error=%s\n", FUNC12(error));
		goto detach;
	}
	FUNC13(uaa->device, iface_index[1], iface_index[0]);

	FUNC9(&sc->sc_mtx);
	FUNC6(sc);
	FUNC7(sc);
	FUNC10(&sc->sc_mtx);

	return (0);			/* success */

detach:
	FUNC5(dev);

	return (ENXIO);			/* error */
}