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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int /*<<< orphan*/  bInterfaceNumber; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; } ;
struct usb_interface {int dummy; } ;
struct usb_config {int ep_index; } ;
struct TYPE_2__ {int bIfaceIndex; int /*<<< orphan*/  idVendor; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct u3g_softc {int sc_numports; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_ucom; scalar_t__** sc_xfer; int /*<<< orphan*/ * sc_iface; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int U3GINIT_SAEL_M460 ; 
 size_t U3G_BULK_RD ; 
 size_t U3G_BULK_WR ; 
 size_t U3G_INTR ; 
 int U3G_MAXPORTS ; 
 int U3G_N_TRANSFER ; 
 scalar_t__ UICLASS_VENDOR ; 
 int /*<<< orphan*/  UQ_MSC_EJECT_SAEL_M460 ; 
 int FUNC1 (struct usb_attach_arg*) ; 
 int USB_IFACE_MAX ; 
 scalar_t__ bootverbose ; 
 struct usb_attach_arg* FUNC2 (int /*<<< orphan*/ ) ; 
 struct u3g_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u3g_callback ; 
 struct usb_config* u3g_config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct u3g_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC16 (int /*<<< orphan*/ ,int) ; 
 struct usb_interface_descriptor* FUNC17 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int*,scalar_t__*,struct usb_config*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct usb_config u3g_config_tmp[U3G_N_TRANSFER];
	struct usb_attach_arg *uaa = FUNC2(dev);
	struct u3g_softc *sc = FUNC3(dev);
	struct usb_interface *iface;
	struct usb_interface_descriptor *id;
	uint32_t iface_valid;
	int error, type, nports;
	int ep, n;
	uint8_t i;

	FUNC0("sc=%p\n", sc);

	type = FUNC1(uaa);
	if (type == U3GINIT_SAEL_M460
	    || FUNC15(uaa, UQ_MSC_EJECT_SAEL_M460)) {
		FUNC11(uaa->device);
	}

	/* copy in USB config */
	for (n = 0; n != U3G_N_TRANSFER; n++)
		u3g_config_tmp[n] = u3g_config[n];

	FUNC5(dev);
	FUNC6(&sc->sc_mtx, "u3g", NULL, MTX_DEF);
	FUNC13(&sc->sc_super_ucom);

	sc->sc_udev = uaa->device;

	/* Claim all interfaces on the device */
	iface_valid = 0;
	for (i = uaa->info.bIfaceIndex; i < USB_IFACE_MAX; i++) {
		iface = FUNC16(uaa->device, i);
		if (iface == NULL)
			break;
		id = FUNC17(iface);
		if (id == NULL || id->bInterfaceClass != UICLASS_VENDOR)
			continue;
		if (FUNC10(uaa->info.idVendor,
		    id->bInterfaceSubClass, id->bInterfaceProtocol))
			continue;
		FUNC18(uaa->device, i, uaa->info.bIfaceIndex);
		iface_valid |= (1<<i);
	}

	i = 0;		/* interface index */
	ep = 0;		/* endpoint index */
	nports = 0;	/* number of ports */
	while (i < USB_IFACE_MAX) {
		if ((iface_valid & (1<<i)) == 0) {
			i++;
			continue;
		}

		/* update BULK endpoint index */
		for (n = 0; n < U3G_N_TRANSFER; n++)
			u3g_config_tmp[n].ep_index = ep;

		/* try to allocate a set of BULK endpoints */
		error = FUNC19(uaa->device, &i,
		    sc->sc_xfer[nports], u3g_config_tmp, U3G_N_TRANSFER,
		    &sc->sc_ucom[nports], &sc->sc_mtx);
		if (error) {
			/* next interface */
			i++;
			ep = 0;
			continue;
		}

		iface = FUNC16(uaa->device, i);
		id = FUNC17(iface);
		sc->sc_iface[nports] = id->bInterfaceNumber;

		if (bootverbose && sc->sc_xfer[nports][U3G_INTR]) {
			FUNC4(dev, "port %d supports modem control\n",
				      nports);
		}

		/* set stall by default */
		FUNC7(&sc->sc_mtx);
		FUNC20(sc->sc_xfer[nports][U3G_BULK_WR]);
		FUNC20(sc->sc_xfer[nports][U3G_BULK_RD]);
		FUNC8(&sc->sc_mtx);

		nports++;	/* found one port */
		ep++;
		if (nports == U3G_MAXPORTS)
			break;
	}
	if (nports == 0) {
		FUNC4(dev, "no ports found\n");
		goto detach;
	}
	sc->sc_numports = nports;

	error = FUNC12(&sc->sc_super_ucom, sc->sc_ucom,
	    sc->sc_numports, sc, &u3g_callback, &sc->sc_mtx);
	if (error) {
		FUNC0("ucom_attach failed\n");
		goto detach;
	}
	FUNC14(&sc->sc_super_ucom, dev);
	FUNC4(dev, "Found %u port%s.\n", sc->sc_numports,
	    sc->sc_numports > 1 ? "s":"");

	return (0);

detach:
	FUNC9(dev);
	return (ENXIO);
}