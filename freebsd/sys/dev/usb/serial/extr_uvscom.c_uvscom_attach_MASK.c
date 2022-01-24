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
struct uvscom_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_line; int /*<<< orphan*/  sc_iface_index; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bIfaceNum; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UVSCOM_BULK_DT_RD ; 
 size_t UVSCOM_BULK_DT_WR ; 
 int /*<<< orphan*/  UVSCOM_IFACE_INDEX ; 
 size_t UVSCOM_INTR_DT_RD ; 
 int /*<<< orphan*/  UVSCOM_LINE_INIT ; 
 int /*<<< orphan*/  UVSCOM_N_TRANSFER ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct uvscom_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uvscom_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uvscom_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uvscom_callback ; 
 int /*<<< orphan*/  uvscom_config ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct uvscom_softc *sc = FUNC2(dev);
	int error;

	FUNC3(dev);
	FUNC4(&sc->sc_mtx, "uvscom", NULL, MTX_DEF);
	FUNC8(&sc->sc_super_ucom);

	sc->sc_udev = uaa->device;

	FUNC0("sc=%p\n", sc);

	sc->sc_iface_no = uaa->info.bIfaceNum;
	sc->sc_iface_index = UVSCOM_IFACE_INDEX;

	error = FUNC10(uaa->device, &sc->sc_iface_index,
	    sc->sc_xfer, uvscom_config, UVSCOM_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("could not allocate all USB transfers!\n");
		goto detach;
	}
	sc->sc_line = UVSCOM_LINE_INIT;

	/* clear stall at first run */
	FUNC5(&sc->sc_mtx);
	FUNC12(sc->sc_xfer[UVSCOM_BULK_DT_WR]);
	FUNC12(sc->sc_xfer[UVSCOM_BULK_DT_RD]);
	FUNC6(&sc->sc_mtx);

	error = FUNC7(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uvscom_callback, &sc->sc_mtx);
	if (error) {
		goto detach;
	}
	FUNC9(&sc->sc_super_ucom, dev);

	/* start interrupt pipe */
	FUNC5(&sc->sc_mtx);
	FUNC11(sc->sc_xfer[UVSCOM_INTR_DT_RD]);
	FUNC6(&sc->sc_mtx);

	return (0);

detach:
	FUNC13(dev);
	return (ENXIO);
}