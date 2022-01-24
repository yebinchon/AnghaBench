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
struct usb_ether {int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct udav_softc* ue_sc; int /*<<< orphan*/ * ue_methods; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct udav_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int UDAV_FLAG_LINK ; 
 int UDAV_FLAG_NO_PHY ; 
 int /*<<< orphan*/  UDAV_IFACE_INDEX ; 
 int /*<<< orphan*/  UDAV_N_TRANSFER ; 
 int FUNC0 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct udav_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udav_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udav_ue_methods ; 
 int /*<<< orphan*/  udav_ue_methods_nophy ; 
 int FUNC8 (struct usb_ether*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udav_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct udav_softc *sc = FUNC3(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int error;

	sc->sc_flags = FUNC0(uaa);

	FUNC5(dev);

	FUNC6(&sc->sc_mtx, FUNC2(dev), NULL, MTX_DEF);

	iface_index = UDAV_IFACE_INDEX;
	error = FUNC9(uaa->device, &iface_index,
	    sc->sc_xfer, udav_config, UDAV_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC4(dev, "allocating USB transfers failed\n");
		goto detach;
	}

	/*
	 * The JP1082 has an unusable PHY and provides no link information.
	 */
	if (sc->sc_flags & UDAV_FLAG_NO_PHY) {
		ue->ue_methods = &udav_ue_methods_nophy;
		sc->sc_flags |= UDAV_FLAG_LINK;
	} else {
		ue->ue_methods = &udav_ue_methods;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;

	error = FUNC8(ue);
	if (error) {
		FUNC4(dev, "could not attach interface\n");
		goto detach;
	}

	return (0);			/* success */

detach:
	FUNC7(dev);
	return (ENXIO);			/* failure */
}