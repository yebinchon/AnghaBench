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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct aue_softc* ue_sc; } ;
struct TYPE_2__ {int bcdDevice; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct aue_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_flags; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUE_FLAG_VER_2 ; 
 int /*<<< orphan*/  AUE_IFACE_IDX ; 
 int /*<<< orphan*/  AUE_N_TRANSFER ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct usb_attach_arg*) ; 
 int /*<<< orphan*/  aue_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aue_ue_methods ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct aue_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_ether*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aue_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct aue_softc *sc = FUNC4(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int error;

	sc->sc_flags = FUNC0(uaa);

	if (uaa->info.bcdDevice >= 0x0201) {
		/* XXX currently undocumented */
		sc->sc_flags |= AUE_FLAG_VER_2;
	}

	FUNC6(dev);
	FUNC7(&sc->sc_mtx, FUNC3(dev), NULL, MTX_DEF);

	iface_index = AUE_IFACE_IDX;
	error = FUNC9(uaa->device, &iface_index,
	    sc->sc_xfer, aue_config, AUE_N_TRANSFER,
	    sc, &sc->sc_mtx);
	if (error) {
		FUNC5(dev, "allocating USB transfers failed\n");
		goto detach;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &aue_ue_methods;

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