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
typedef  scalar_t__ uint8_t ;
struct usb_ether {int* ue_eaddr; int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct cdceem_softc* ue_sc; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; } ;
struct cdceem_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDCEEM_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (struct cdceem_softc*,char*,int) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdceem_config ; 
 int /*<<< orphan*/  cdceem_ue_methods ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cdceem_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_ether*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cdceem_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct cdceem_softc *sc;
	struct usb_ether *ue;
	struct usb_attach_arg *uaa;
	int error;
	uint8_t iface_index;

	sc = FUNC4(dev);
	ue = &sc->sc_ue;
	uaa = FUNC2(dev);

	FUNC5(dev);

	FUNC7(&sc->sc_mtx, FUNC3(dev), NULL, MTX_DEF);

	/* Setup the endpoints. */
	iface_index = 0;
	error = FUNC9(uaa->device, &iface_index, sc->sc_xfer,
	    cdceem_config, CDCEEM_N_TRANSFER, sc, &sc->sc_mtx);
	if (error != 0) {
		FUNC0(sc,
		    "allocating USB transfers failed, error %d", error);
		FUNC6(&sc->sc_mtx);
		return (error);
	}

	/* Random MAC address. */
	FUNC1(ue->ue_eaddr, ETHER_ADDR_LEN, 0);
	ue->ue_eaddr[0] &= ~0x01;	/* unicast */
	ue->ue_eaddr[0] |= 0x02;	/* locally administered */

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &cdceem_ue_methods;

	error = FUNC8(ue);
	if (error != 0) {
		FUNC0(sc, "could not attach interface, error %d", error);
		FUNC10(sc->sc_xfer, CDCEEM_N_TRANSFER);
		FUNC6(&sc->sc_mtx);
		return (error);
	}

	return (0);
}