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
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct ipheth_softc* ue_sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct ipheth_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_iface_no; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IPHETH_ALT_INTFNUM ; 
 int /*<<< orphan*/  IPHETH_N_TRANSFER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 struct usb_attach_arg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ipheth_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipheth_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipheth_softc*) ; 
 int /*<<< orphan*/  ipheth_ue_methods ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_ether*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipheth_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ipheth_softc *sc = FUNC2(dev);
	struct usb_ether *ue = &sc->sc_ue;
	struct usb_attach_arg *uaa = FUNC0(dev);
	int error;

	sc->sc_iface_no = uaa->info.bIfaceIndex;

	FUNC4(dev);

	FUNC7(&sc->sc_mtx, FUNC1(dev), NULL, MTX_DEF);

	error = FUNC9(uaa->device,
	    uaa->info.bIfaceIndex, IPHETH_ALT_INTFNUM);
	if (error) {
		FUNC3(dev, "Cannot set alternate setting\n");
		goto detach;
	}
	error = FUNC10(uaa->device, &sc->sc_iface_no,
	    sc->sc_xfer, ipheth_config, IPHETH_N_TRANSFER, sc, &sc->sc_mtx);
	if (error) {
		FUNC3(dev, "Cannot setup USB transfers\n");
		goto detach;
	}
	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &ipheth_ue_methods;

	error = FUNC6(sc);
	if (error) {
		FUNC3(dev, "Cannot get MAC address\n");
		goto detach;
	}

	error = FUNC8(ue);
	if (error) {
		FUNC3(dev, "could not attach interface\n");
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC5(dev);
	return (ENXIO);			/* failure */
}