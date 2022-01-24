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
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct rue_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct rue_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RUE_IFACE_IDX ; 
 int /*<<< orphan*/  RUE_N_TRANSFER ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rue_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rue_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rue_ue_methods ; 
 int FUNC7 (struct usb_ether*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rue_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC0(dev);
	struct rue_softc *sc = FUNC2(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int error;

	FUNC4(dev);
	FUNC5(&sc->sc_mtx, FUNC1(dev), NULL, MTX_DEF);

	iface_index = RUE_IFACE_IDX;
	error = FUNC8(uaa->device, &iface_index,
	    sc->sc_xfer, rue_config, RUE_N_TRANSFER,
	    sc, &sc->sc_mtx);
	if (error) {
		FUNC3(dev, "allocating USB transfers failed\n");
		goto detach;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &rue_ue_methods;

	error = FUNC7(ue);
	if (error) {
		FUNC3(dev, "could not attach interface\n");
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC6(dev);
	return (ENXIO);			/* failure */
}