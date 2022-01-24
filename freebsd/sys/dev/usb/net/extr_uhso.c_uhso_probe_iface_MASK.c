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
struct usb_interface {TYPE_1__* idesc; } ;
struct uhso_softc {struct usb_device* sc_udev; scalar_t__ sc_ttys; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_type; } ;
struct TYPE_2__ {int bNumEndpoints; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,scalar_t__) ; 
 int FUNC4 (int) ; 
 int UHSO_IF_BULK ; 
 int UHSO_IF_MUX ; 
 size_t UHSO_MUX_ENDPT_INTR ; 
 int UHSO_PORT_SERIAL ; 
 scalar_t__ UHSO_PORT_TYPE_NETWORK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,struct uhso_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct uhso_softc*,struct usb_interface*,int) ; 
 int FUNC11 (struct uhso_softc*,struct usb_interface*,int) ; 
 int FUNC12 (struct uhso_softc*,struct usb_interface*,int) ; 
 int /*<<< orphan*/  uhso_ucom_callback ; 
 struct usb_interface* FUNC13 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct uhso_softc *sc, int index,
    int (*probe)(struct usb_device *, int))
{
	struct usb_interface *iface;
	int type, error;

	FUNC0(1, "Probing for interface %d, probe_func=%p\n", index, probe);

	type = probe(sc->sc_udev, index);
	FUNC0(1, "Probe result %x\n", type);
	if (type <= 0)
		return (ENXIO);

	sc->sc_type = type;
	iface = FUNC13(sc->sc_udev, index);

	if (FUNC2(type) == UHSO_PORT_TYPE_NETWORK) {
		error = FUNC11(sc, iface, type);
		if (error) {
			FUNC0(1, "uhso_attach_ifnet failed");
			return (ENXIO);
		}

		/*
		 * If there is an additional interrupt endpoint on this
		 * interface then we most likely have a multiplexed serial port
		 * available.
		 */
		if (iface->idesc->bNumEndpoints < 3) {
			sc->sc_type = FUNC3( 
			    FUNC4(type) & ~UHSO_IF_MUX,
			    FUNC1(type) & ~UHSO_PORT_SERIAL,
			    FUNC2(type));
			return (0);
		}

		FUNC0(1, "Trying to attach mux. serial\n");
		error = FUNC12(sc, iface, type);
		if (error == 0 && sc->sc_ttys > 0) {
			error = FUNC8(&sc->sc_super_ucom, sc->sc_ucom,
			    sc->sc_ttys, sc, &uhso_ucom_callback, &sc->sc_mtx);
			if (error) {
				FUNC5(sc->sc_dev, "ucom_attach failed\n");
				return (ENXIO);
			}
			FUNC9(&sc->sc_super_ucom, sc->sc_dev);

			FUNC6(&sc->sc_mtx);
			FUNC14(sc->sc_xfer[UHSO_MUX_ENDPT_INTR]);
			FUNC7(&sc->sc_mtx);
		}
	} else if ((FUNC4(type) & UHSO_IF_BULK) &&
	    FUNC1(type) & UHSO_PORT_SERIAL) {

		error = FUNC10(sc, iface, type);
		if (error)
			return (ENXIO);

		error = FUNC8(&sc->sc_super_ucom, sc->sc_ucom,
		    sc->sc_ttys, sc, &uhso_ucom_callback, &sc->sc_mtx);
		if (error) {
			FUNC5(sc->sc_dev, "ucom_attach failed\n");
			return (ENXIO);
		}
		FUNC9(&sc->sc_super_ucom, sc->sc_dev);
	}
	else {
		FUNC0(0, "Unknown type %x\n", type);
		return (ENXIO);
	}

	return (0);
}