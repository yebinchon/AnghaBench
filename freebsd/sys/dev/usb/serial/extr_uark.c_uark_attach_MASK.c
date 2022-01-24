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
struct uark_softc {int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_udev; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UARK_BULK_DT_RD ; 
 size_t UARK_BULK_DT_WR ; 
 int /*<<< orphan*/  UARK_IFACE_INDEX ; 
 int /*<<< orphan*/  UARK_N_TRANSFER ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct uark_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uark_callback ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uark_xfer_config ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uark_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uark_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct uark_softc *sc = FUNC2(dev);
	int32_t error;
	uint8_t iface_index;

	FUNC4(dev);
	FUNC5(&sc->sc_mtx, "uark", NULL, MTX_DEF);
	FUNC10(&sc->sc_super_ucom);

	sc->sc_udev = uaa->device;

	iface_index = UARK_IFACE_INDEX;
	error = FUNC12
	    (uaa->device, &iface_index, sc->sc_xfer,
	    uark_xfer_config, UARK_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC3(dev, "allocating control USB "
		    "transfers failed\n");
		goto detach;
	}
	/* clear stall at first run */
	FUNC6(&sc->sc_mtx);
	FUNC13(sc->sc_xfer[UARK_BULK_DT_WR]);
	FUNC13(sc->sc_xfer[UARK_BULK_DT_RD]);
	FUNC7(&sc->sc_mtx);

	error = FUNC9(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uark_callback, &sc->sc_mtx);
	if (error) {
		FUNC0("ucom_attach failed\n");
		goto detach;
	}
	FUNC11(&sc->sc_super_ucom, dev);

	return (0);			/* success */

detach:
	FUNC8(dev);
	return (ENXIO);			/* failure */
}