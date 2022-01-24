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
typedef  int /*<<< orphan*/  uvisor_config_copy ;
struct uvisor_softc {int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_iface_index; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_flag; int /*<<< orphan*/  sc_udev; } ;
struct usb_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bIfaceNum; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (struct usb_attach_arg*) ; 
 int /*<<< orphan*/  UVISOR_IFACE_INDEX ; 
 int UVISOR_N_TRANSFER ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct uvisor_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct uvisor_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_config*,int,struct uvisor_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uvisor_callback ; 
 int /*<<< orphan*/  uvisor_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct uvisor_softc*,int /*<<< orphan*/ ,struct usb_config*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct uvisor_softc *sc = FUNC3(dev);
	struct usb_config uvisor_config_copy[UVISOR_N_TRANSFER];
	int error;

	FUNC0("sc=%p\n", sc);
	FUNC5(uvisor_config_copy, uvisor_config,
	    sizeof(uvisor_config_copy));

	FUNC4(dev);

	FUNC6(&sc->sc_mtx, "uvisor", NULL, MTX_DEF);
	FUNC8(&sc->sc_super_ucom);

	sc->sc_udev = uaa->device;

	/* configure the device */

	sc->sc_flag = FUNC1(uaa);
	sc->sc_iface_no = uaa->info.bIfaceNum;
	sc->sc_iface_index = UVISOR_IFACE_INDEX;

	error = FUNC13(sc, uaa->device, uvisor_config_copy);

	if (error) {
		FUNC0("init failed, error=%s\n",
		    FUNC10(error));
		goto detach;
	}
	error = FUNC11(uaa->device, &sc->sc_iface_index,
	    sc->sc_xfer, uvisor_config_copy, UVISOR_N_TRANSFER,
	    sc, &sc->sc_mtx);
	if (error) {
		FUNC0("could not allocate all pipes\n");
		goto detach;
	}

	error = FUNC7(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &uvisor_callback, &sc->sc_mtx);
	if (error) {
		FUNC0("ucom_attach failed\n");
		goto detach;
	}
	FUNC9(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC12(dev);
	return (ENXIO);
}