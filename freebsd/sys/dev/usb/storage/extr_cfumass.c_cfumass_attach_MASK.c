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
struct cfumass_softc {scalar_t__ sc_ctl_initid; int /*<<< orphan*/  sc_queued; int /*<<< orphan*/ * sc_xfer; void* sc_csw; void* sc_cbw; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 size_t CFUMASS_T_COMMAND ; 
 int /*<<< orphan*/  CFUMASS_T_MAX ; 
 size_t CFUMASS_T_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfumass_softc*,char*,scalar_t__) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  USB_POWER_MODE_SAVE ; 
 int /*<<< orphan*/  cfumass_config ; 
 int /*<<< orphan*/  cfumass_port ; 
 int /*<<< orphan*/  cfumass_refcount ; 
 int /*<<< orphan*/  FUNC4 (struct cfumass_softc*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_attach_arg* FUNC6 (int /*<<< orphan*/ ) ; 
 struct cfumass_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfumass_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct cfumass_softc *sc;
	struct usb_attach_arg *uaa;
	int error;

	sc = FUNC7(dev);
	uaa = FUNC6(dev);

	sc->sc_dev = dev;
	sc->sc_udev = uaa->device;

	FUNC0(sc, "go");

	FUNC14(uaa->device, USB_POWER_MODE_SAVE);
	FUNC8(dev);

	FUNC9(&sc->sc_mtx, "cfumass", NULL, MTX_DEF);
	FUNC10(&cfumass_refcount);

	error = FUNC15(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, cfumass_config,
	    CFUMASS_T_MAX, sc, &sc->sc_mtx);
	if (error != 0) {
		FUNC3(sc, "usbd_transfer_setup() failed: %s",
		    FUNC13(error));
		FUNC12(&cfumass_refcount);
		return (ENXIO);
	}

	sc->sc_cbw =
	    FUNC17(sc->sc_xfer[CFUMASS_T_COMMAND], 0);
	sc->sc_csw =
	    FUNC17(sc->sc_xfer[CFUMASS_T_STATUS], 0);

	sc->sc_ctl_initid = FUNC5(&cfumass_port, -1, 0, NULL);
	if (sc->sc_ctl_initid < 0) {
		FUNC3(sc, "ctl_add_initiator() failed with error %d",
		    sc->sc_ctl_initid);
		FUNC16(sc->sc_xfer, CFUMASS_T_MAX);
		FUNC12(&cfumass_refcount);
		return (ENXIO);
	}

	FUNC11(&sc->sc_queued, 0);

	FUNC1(sc);
	FUNC4(sc, CFUMASS_T_COMMAND);
	FUNC2(sc);

	return (0);
}