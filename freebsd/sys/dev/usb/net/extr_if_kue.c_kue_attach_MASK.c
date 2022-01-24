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
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct kue_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct kue_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_mcfilters; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  KUE_IFACE_IDX ; 
 int FUNC0 (struct kue_softc*) ; 
 int /*<<< orphan*/  KUE_N_TRANSFER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct kue_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kue_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kue_ue_methods ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_ether*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kue_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct kue_softc *sc = FUNC3(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int error;

	FUNC5(dev);
	FUNC8(&sc->sc_mtx, FUNC2(dev), NULL, MTX_DEF);

	iface_index = KUE_IFACE_IDX;
	error = FUNC10(uaa->device, &iface_index,
	    sc->sc_xfer, kue_config, KUE_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC4(dev, "allocating USB transfers failed\n");
		goto detach;
	}

	sc->sc_mcfilters = FUNC7(FUNC0(sc) * ETHER_ADDR_LEN,
	    M_USBDEV, M_WAITOK);
	if (sc->sc_mcfilters == NULL) {
		FUNC4(dev, "failed allocating USB memory\n");
		goto detach;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &kue_ue_methods;

	error = FUNC9(ue);
	if (error) {
		FUNC4(dev, "could not attach interface\n");
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC6(dev);
	return (ENXIO);			/* failure */
}