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
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct smsc_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct smsc_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_flags; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  SMSC_IFACE_IDX ; 
 int /*<<< orphan*/  SMSC_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct smsc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsc_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsc_ue_methods ; 
 int FUNC8 (struct usb_ether*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smsc_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct smsc_softc *sc = FUNC3(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int err;

	sc->sc_flags = FUNC0(uaa);

	FUNC5(dev);

	FUNC6(&sc->sc_mtx, FUNC2(dev), NULL, MTX_DEF);

	/* Setup the endpoints for the SMSC LAN95xx device(s) */
	iface_index = SMSC_IFACE_IDX;
	err = FUNC9(uaa->device, &iface_index, sc->sc_xfer,
	                          smsc_config, SMSC_N_TRANSFER, sc, &sc->sc_mtx);
	if (err) {
		FUNC4(dev, "error: allocating USB transfers failed\n");
		goto detach;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &smsc_ue_methods;

	err = FUNC8(ue);
	if (err) {
		FUNC4(dev, "error: could not attach interface\n");
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC7(dev);
	return (ENXIO);		/* failure */
}