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
struct usb_ether {int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct muge_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct muge_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int MUGE_FLAG_INIT_DONE ; 
 int /*<<< orphan*/  MUGE_IFACE_IDX ; 
 int /*<<< orphan*/  MUGE_N_TRANSFER ; 
 int FUNC0 (struct usb_attach_arg*) ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct muge_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  muge_config ; 
 int /*<<< orphan*/  muge_ue_methods ; 
 int FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_ether*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct muge_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct muge_softc *sc = FUNC3(dev);
	struct usb_ether *ue = &sc->sc_ue;
	uint8_t iface_index;
	int err;

	sc->sc_flags = FUNC0(uaa);

	FUNC5(dev);

	FUNC7(&sc->sc_mtx, FUNC2(dev), NULL, MTX_DEF);

	/* Setup the endpoints for the Microchip LAN78xx device. */
	iface_index = MUGE_IFACE_IDX;
	err = FUNC11(uaa->device, &iface_index, sc->sc_xfer,
	    muge_config, MUGE_N_TRANSFER, sc, &sc->sc_mtx);
	if (err) {
		FUNC4(dev, "error: allocating USB transfers failed\n");
		goto err;
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &muge_ue_methods;

	err = FUNC8(ue);
	if (err) {
		FUNC4(dev, "error: could not attach interface\n");
		goto err_usbd;
	}

	/* Wait for lan78xx_chip_init from post-attach callback to complete. */
	FUNC9(ue);
	if (!(sc->sc_flags & MUGE_FLAG_INIT_DONE))
		goto err_attached;

	return (0);

err_attached:
	FUNC10(ue);
err_usbd:
	FUNC12(sc->sc_xfer, MUGE_N_TRANSFER);
err:
	FUNC6(&sc->sc_mtx);
	return (ENXIO);
}