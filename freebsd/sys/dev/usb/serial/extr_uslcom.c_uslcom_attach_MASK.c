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
struct uslcom_softc {int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_partnum; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_watchdog; } ;
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; int /*<<< orphan*/  bIfaceNum; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t USLCOM_BULK_DT_RD ; 
 size_t USLCOM_BULK_DT_WR ; 
 int /*<<< orphan*/  USLCOM_N_TRANSFER ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct uslcom_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uslcom_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uslcom_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uslcom_callback ; 
 int /*<<< orphan*/  uslcom_config ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct uslcom_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct uslcom_softc *sc = FUNC3(dev);
	int error;

	FUNC1(11, "\n");

	FUNC4(dev);
	FUNC5(&sc->sc_mtx, "uslcom", NULL, MTX_DEF);
	FUNC9(&sc->sc_super_ucom);
	FUNC11(&sc->sc_watchdog, &sc->sc_mtx, 0);

	sc->sc_udev = uaa->device;
	/* use the interface number from the USB interface descriptor */
	sc->sc_iface_no = uaa->info.bIfaceNum;

	error = FUNC13(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, uslcom_config,
	    USLCOM_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC0("one or more missing USB endpoints, "
		    "error=%s\n", FUNC12(error));
		goto detach;
	}
	/* clear stall at first run */
	FUNC6(&sc->sc_mtx);
	FUNC14(sc->sc_xfer[USLCOM_BULK_DT_WR]);
	FUNC14(sc->sc_xfer[USLCOM_BULK_DT_RD]);
	FUNC7(&sc->sc_mtx);

	sc->sc_partnum = FUNC16(sc);

	error = FUNC8(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uslcom_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC10(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC15(dev);
	return (ENXIO);
}