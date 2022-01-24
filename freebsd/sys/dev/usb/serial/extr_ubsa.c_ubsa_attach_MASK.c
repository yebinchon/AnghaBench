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
struct TYPE_2__ {int /*<<< orphan*/  bIfaceNum; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct ubsa_softc {int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_iface_index; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 size_t UBSA_BULK_DT_RD ; 
 size_t UBSA_BULK_DT_WR ; 
 int /*<<< orphan*/  UBSA_IFACE_INDEX ; 
 int /*<<< orphan*/  UBSA_N_TRANSFER ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ubsa_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubsa_callback ; 
 int /*<<< orphan*/  ubsa_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct ubsa_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubsa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct ubsa_softc *sc = FUNC2(dev);
	int error;

	FUNC0("sc=%p\n", sc);

	FUNC3(dev);
	FUNC4(&sc->sc_mtx, "ubsa", NULL, MTX_DEF);
	FUNC9(&sc->sc_super_ucom);

	sc->sc_udev = uaa->device;
	sc->sc_iface_no = uaa->info.bIfaceNum;
	sc->sc_iface_index = UBSA_IFACE_INDEX;

	error = FUNC11(uaa->device, &sc->sc_iface_index,
	    sc->sc_xfer, ubsa_config, UBSA_N_TRANSFER, sc, &sc->sc_mtx);

	if (error) {
		FUNC0("could not allocate all pipes\n");
		goto detach;
	}
	/* clear stall at first run */
	FUNC5(&sc->sc_mtx);
	FUNC12(sc->sc_xfer[UBSA_BULK_DT_WR]);
	FUNC12(sc->sc_xfer[UBSA_BULK_DT_RD]);
	FUNC6(&sc->sc_mtx);

	error = FUNC8(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &ubsa_callback, &sc->sc_mtx);
	if (error) {
		FUNC0("ucom_attach failed\n");
		goto detach;
	}
	FUNC10(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC7(dev);
	return (ENXIO);
}