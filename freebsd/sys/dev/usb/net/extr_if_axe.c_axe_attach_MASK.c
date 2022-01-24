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
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct axe_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct axe_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_flags; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_IFACE_IDX ; 
 int /*<<< orphan*/  AXE_N_TRANSFER ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct usb_attach_arg*) ; 
 int /*<<< orphan*/  axe_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axe_ue_methods ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct axe_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_ether*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct axe_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct axe_softc *sc = FUNC4(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int error;

	sc->sc_flags = FUNC0(uaa);

	FUNC6(dev);

	FUNC7(&sc->sc_mtx, FUNC3(dev), NULL, MTX_DEF);

	iface_index = AXE_IFACE_IDX;
	error = FUNC9(uaa->device, &iface_index, sc->sc_xfer,
	    axe_config, AXE_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC5(dev, "allocating USB transfers failed\n");
		goto detach;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &axe_ue_methods;

	error = FUNC8(ue);
	if (error) {
		FUNC5(dev, "could not attach interface\n");
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC1(dev);
	return (ENXIO);			/* failure */
}