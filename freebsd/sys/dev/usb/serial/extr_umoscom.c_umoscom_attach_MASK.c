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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct umoscom_softc {int sc_mcr; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UMOSCOM_BULK_DT_RD ; 
 size_t UMOSCOM_BULK_DT_WR ; 
 int /*<<< orphan*/  UMOSCOM_IFACE_INDEX ; 
 int /*<<< orphan*/  UMOSCOM_N_TRANSFER ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct umoscom_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct umoscom_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umoscom_callback ; 
 int /*<<< orphan*/  umoscom_config_data ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umoscom_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	struct umoscom_softc *sc = FUNC1(dev);
	int error;
	uint8_t iface_index;

	sc->sc_udev = uaa->device;
	sc->sc_mcr = 0x08;		/* enable interrupts */

	/* XXX the device doesn't provide any ID string, so set a static one */
	FUNC3(dev, "MOSCHIP USB Serial Port Adapter");
	FUNC2(dev, "<MOSCHIP USB Serial Port Adapter>\n");

	FUNC4(&sc->sc_mtx, "umoscom", NULL, MTX_DEF);
	FUNC8(&sc->sc_super_ucom);

	iface_index = UMOSCOM_IFACE_INDEX;
	error = FUNC12(uaa->device, &iface_index,
	    sc->sc_xfer, umoscom_config_data,
	    UMOSCOM_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		goto detach;
	}
	/* clear stall at first run */
	FUNC5(&sc->sc_mtx);
	FUNC13(sc->sc_xfer[UMOSCOM_BULK_DT_WR]);
	FUNC13(sc->sc_xfer[UMOSCOM_BULK_DT_RD]);
	FUNC6(&sc->sc_mtx);

	error = FUNC7(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &umoscom_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC9(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC2(dev, "attach error: %s\n", FUNC11(error));
	FUNC10(dev);
	return (ENXIO);
}