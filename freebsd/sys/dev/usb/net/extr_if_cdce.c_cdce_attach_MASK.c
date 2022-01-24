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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceNumber; } ;
struct usb_interface {int dummy; } ;
struct usb_ether {int* ue_eaddr; int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; struct cdce_softc* ue_sc; } ;
struct usb_config {int dummy; } ;
struct usb_cdc_union_descriptor {int bLength; scalar_t__* bSlaveInterface; } ;
struct usb_cdc_ethernet_descriptor {int bLength; int /*<<< orphan*/  iMacAddress; } ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct cdce_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; struct usb_ether sc_ue; int /*<<< orphan*/  sc_xfer; scalar_t__* sc_ifaces_index; } ;
typedef  int /*<<< orphan*/  eaddr_str ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CDCE_FLAG_NO_UNION ; 
 int /*<<< orphan*/  CDCE_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UDESCSUB_CDC_ENF ; 
 int /*<<< orphan*/  UDESCSUB_CDC_UNION ; 
 int /*<<< orphan*/  UDESC_CS_INTERFACE ; 
 int USB_ERR_INVAL ; 
 int FUNC1 (struct usb_attach_arg*) ; 
 scalar_t__ USB_MODE_DEVICE ; 
 struct usb_config* cdce_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_config* cdce_ncm_config ; 
 scalar_t__ FUNC3 (struct cdce_softc*) ; 
 int /*<<< orphan*/  cdce_ue_methods ; 
 struct usb_attach_arg* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cdce_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ticks ; 
 int FUNC13 (struct usb_ether*) ; 
 void* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct usb_interface* FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct usb_interface_descriptor* FUNC16 (struct usb_interface*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC20 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,struct usb_config const*,int /*<<< orphan*/ ,struct cdce_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct cdce_softc *sc = FUNC6(dev);
	struct usb_ether *ue = &sc->sc_ue;
	struct usb_attach_arg *uaa = FUNC4(dev);
	struct usb_interface *iface;
	const struct usb_cdc_union_descriptor *ud;
	const struct usb_interface_descriptor *id;
	const struct usb_cdc_ethernet_descriptor *ued;
	const struct usb_config *pcfg;
	uint32_t seed;
	int error;
	uint8_t i;
	uint8_t data_iface_no;
	char eaddr_str[5 * ETHER_ADDR_LEN];	/* approx */

	sc->sc_flags = FUNC1(uaa);
	sc->sc_ue.ue_udev = uaa->device;

	FUNC9(dev);

	FUNC12(&sc->sc_mtx, FUNC5(dev), NULL, MTX_DEF);

	ud = FUNC14
	    (uaa->device, NULL, uaa->info.bIfaceIndex,
	    UDESC_CS_INTERFACE, 0xFF, UDESCSUB_CDC_UNION, 0xFF);

	if ((ud == NULL) || (ud->bLength < sizeof(*ud)) ||
	    (sc->sc_flags & CDCE_FLAG_NO_UNION)) {
		FUNC0(1, "No union descriptor!\n");
		sc->sc_ifaces_index[0] = uaa->info.bIfaceIndex;
		sc->sc_ifaces_index[1] = uaa->info.bIfaceIndex;
		goto alloc_transfers;
	}
	data_iface_no = ud->bSlaveInterface[0];

	for (i = 0;; i++) {

		iface = FUNC15(uaa->device, i);

		if (iface) {

			id = FUNC16(iface);

			if (id && (id->bInterfaceNumber == data_iface_no)) {
				sc->sc_ifaces_index[0] = i;
				sc->sc_ifaces_index[1] = uaa->info.bIfaceIndex;
				FUNC19(uaa->device, i, uaa->info.bIfaceIndex);
				break;
			}
		} else {
			FUNC8(dev, "no data interface found\n");
			goto detach;
		}
	}

	/*
	 * <quote>
	 *
	 *  The Data Class interface of a networking device shall have
	 *  a minimum of two interface settings. The first setting
	 *  (the default interface setting) includes no endpoints and
	 *  therefore no networking traffic is exchanged whenever the
	 *  default interface setting is selected. One or more
	 *  additional interface settings are used for normal
	 *  operation, and therefore each includes a pair of endpoints
	 *  (one IN, and one OUT) to exchange network traffic. Select
	 *  an alternate interface setting to initialize the network
	 *  aspects of the device and to enable the exchange of
	 *  network traffic.
	 *
	 * </quote>
	 *
	 * Some devices, most notably cable modems, include interface
	 * settings that have no IN or OUT endpoint, therefore loop
	 * through the list of all available interface settings
	 * looking for one with both IN and OUT endpoints.
	 */

alloc_transfers:

	pcfg = cdce_config;	/* Default Configuration */

	for (i = 0; i != 32; i++) {

		error = FUNC18(uaa->device,
		    sc->sc_ifaces_index[0], i);
		if (error)
			break;
#if CDCE_HAVE_NCM
		if ((i == 0) && (cdce_ncm_init(sc) == 0))
			pcfg = cdce_ncm_config;
#endif
		error = FUNC20(uaa->device,
		    sc->sc_ifaces_index, sc->sc_xfer,
		    pcfg, CDCE_N_TRANSFER, sc, &sc->sc_mtx);

		if (error == 0)
			break;
	}

	if (error || (i == 32)) {
		FUNC8(dev, "No valid alternate "
		    "setting found\n");
		goto detach;
	}

	ued = FUNC14
	    (uaa->device, NULL, uaa->info.bIfaceIndex,
	    UDESC_CS_INTERFACE, 0xFF, UDESCSUB_CDC_ENF, 0xFF);

	if ((ued == NULL) || (ued->bLength < sizeof(*ued))) {
		error = USB_ERR_INVAL;
	} else {
		error = FUNC17(uaa->device, NULL, 
		    eaddr_str, sizeof(eaddr_str), ued->iMacAddress);
	}

	if (error) {

		/* fake MAC address */

		FUNC8(dev, "faking MAC address\n");
		seed = ticks;
		sc->sc_ue.ue_eaddr[0] = 0x2a;
		FUNC10(&sc->sc_ue.ue_eaddr[1], &seed, sizeof(uint32_t));
		sc->sc_ue.ue_eaddr[5] = FUNC7(dev);

	} else {

		FUNC11(sc->sc_ue.ue_eaddr, 0, sizeof(sc->sc_ue.ue_eaddr));

		for (i = 0; i != (ETHER_ADDR_LEN * 2); i++) {

			char c = eaddr_str[i];

			if ('0' <= c && c <= '9')
				c -= '0';
			else if (c != 0)
				c -= 'A' - 10;
			else
				break;

			c &= 0xf;

			if ((i & 1) == 0)
				c <<= 4;
			sc->sc_ue.ue_eaddr[i / 2] |= c;
		}

		if (uaa->usb_mode == USB_MODE_DEVICE) {
			/*
			 * Do not use the same MAC address like the peer !
			 */
			sc->sc_ue.ue_eaddr[5] ^= 0xFF;
		}
	}

	ue->ue_sc = sc;
	ue->ue_dev = dev;
	ue->ue_udev = uaa->device;
	ue->ue_mtx = &sc->sc_mtx;
	ue->ue_methods = &cdce_ue_methods;

	error = FUNC13(ue);
	if (error) {
		FUNC8(dev, "could not attach interface\n");
		goto detach;
	}
	return (0);			/* success */

detach:
	FUNC2(dev);
	return (ENXIO);			/* failure */
}