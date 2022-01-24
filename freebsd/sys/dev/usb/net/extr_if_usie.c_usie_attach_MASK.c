#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct usie_softc {size_t sc_nucom; int sc_if_ifnum; int* sc_uc_ifnum; struct ifnet* sc_ifp; int /*<<< orphan*/  sc_mtx; struct usie_softc* sc_ucom; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/ *** sc_uc_xfer; int /*<<< orphan*/ ** sc_if_xfer; int /*<<< orphan*/  sc_if_sync_ch; int /*<<< orphan*/  sc_if_sync_task; int /*<<< orphan*/  sc_if_status_task; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_udev; } ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceNumber; int bNumEndpoints; } ;
struct usb_interface {int dummy; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct TYPE_4__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {TYPE_2__ if_snd; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_flags; int /*<<< orphan*/  if_mtu; struct usie_softc* if_softc; } ;
typedef  int /*<<< orphan*/  fwattr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_RAW ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_OTHER ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_NETWORK_LOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usie_softc*) ; 
 scalar_t__ UICLASS_VENDOR ; 
 int /*<<< orphan*/  USB_POWER_MODE_ON ; 
 int /*<<< orphan*/  USB_POWER_MODE_SAVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USIE_FW_ATTR ; 
 int USIE_FW_DHCP ; 
 scalar_t__ USIE_IFACE_MAX ; 
 scalar_t__ USIE_IF_N_XFER ; 
 int /*<<< orphan*/  USIE_MTU_MAX ; 
 int USIE_PM_AUTO ; 
 int /*<<< orphan*/  USIE_POWER ; 
 size_t USIE_UCOM_MAX ; 
 scalar_t__ USIE_UC_N_XFER ; 
 int /*<<< orphan*/  UT_READ_VENDOR_DEVICE ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC6 (int /*<<< orphan*/ ) ; 
 struct usie_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct usie_softc*,size_t,struct usie_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 struct usb_interface* FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct usb_interface_descriptor* FUNC22 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ **,scalar_t__,scalar_t__,struct usie_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct usie_softc*,struct usb_device_request*,int*) ; 
 scalar_t__ usie_if_config ; 
 int /*<<< orphan*/  usie_if_init ; 
 int /*<<< orphan*/  usie_if_ioctl ; 
 int /*<<< orphan*/  usie_if_output ; 
 int /*<<< orphan*/  usie_if_start ; 
 int /*<<< orphan*/  usie_if_status_cb ; 
 int /*<<< orphan*/  usie_if_sync_cb ; 
 int /*<<< orphan*/  usie_uc_callback ; 
 scalar_t__ usie_uc_config ; 

__attribute__((used)) static int
FUNC29(device_t self)
{
	struct usie_softc *sc = FUNC7(self);
	struct usb_attach_arg *uaa = FUNC6(self);
	struct ifnet *ifp;
	struct usb_interface *iface;
	struct usb_interface_descriptor *id;
	struct usb_device_request req;
	int err;
	uint16_t fwattr;
	uint8_t iface_index;
	uint8_t ifidx;
	uint8_t start;

	FUNC10(self);
	sc->sc_udev = uaa->device;
	sc->sc_dev = self;

	FUNC14(&sc->sc_mtx, "usie", MTX_NETWORK_LOCK, MTX_DEF);
	FUNC18(&sc->sc_super_ucom);

	FUNC3(&sc->sc_if_status_task, 0, usie_if_status_cb, sc);
	FUNC3(&sc->sc_if_sync_task, 0, usie_if_sync_cb, sc);

	FUNC19(&sc->sc_if_sync_ch, &sc->sc_mtx, 0);

	FUNC15(&sc->sc_mtx);

	/* set power mode to D0 */
	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = USIE_POWER;
	FUNC4(req.wValue, 0);
	FUNC4(req.wIndex, 0);
	FUNC4(req.wLength, 0);
	if (FUNC28(sc, &req, NULL)) {
		FUNC16(&sc->sc_mtx);
		goto detach;
	}
	/* read fw attr */
	fwattr = 0;
	req.bmRequestType = UT_READ_VENDOR_DEVICE;
	req.bRequest = USIE_FW_ATTR;
	FUNC4(req.wValue, 0);
	FUNC4(req.wIndex, 0);
	FUNC4(req.wLength, sizeof(fwattr));
	if (FUNC28(sc, &req, &fwattr)) {
		FUNC16(&sc->sc_mtx);
		goto detach;
	}
	FUNC16(&sc->sc_mtx);

	/* check DHCP supports */
	FUNC0("fwattr=%x\n", fwattr);
	if (!(fwattr & USIE_FW_DHCP)) {
		FUNC9(self, "DHCP is not supported. A firmware upgrade might be needed.\n");
	}

	/* find available interfaces */
	sc->sc_nucom = 0;
	for (ifidx = 0; ifidx < USIE_IFACE_MAX; ifidx++) {
		iface = FUNC21(uaa->device, ifidx);
		if (iface == NULL)
			break;

		id = FUNC22(iface);
		if ((id == NULL) || (id->bInterfaceClass != UICLASS_VENDOR))
			continue;

		/* setup Direct IP transfer */
		if (id->bInterfaceNumber >= 7 && id->bNumEndpoints == 3) {
			sc->sc_if_ifnum = id->bInterfaceNumber;
			iface_index = ifidx;

			FUNC0("ifnum=%d, ifidx=%d\n",
			    sc->sc_if_ifnum, ifidx);

			err = FUNC25(uaa->device,
			    &iface_index, sc->sc_if_xfer, usie_if_config,
			    USIE_IF_N_XFER, sc, &sc->sc_mtx);

			if (err == 0)
				continue;

			FUNC9(self,
			    "could not allocate USB transfers on "
			    "iface_index=%d, err=%s\n",
			    iface_index, FUNC20(err));
			goto detach;
		}

		/* setup ucom */
		if (sc->sc_nucom >= USIE_UCOM_MAX)
			continue;

		FUNC23(uaa->device, ifidx,
		    uaa->info.bIfaceIndex);

		FUNC0("NumEndpoints=%d bInterfaceNumber=%d\n",
		    id->bNumEndpoints, id->bInterfaceNumber);

		if (id->bNumEndpoints == 2) {
			sc->sc_uc_xfer[sc->sc_nucom][0] = NULL;
			start = 1;
		} else
			start = 0;

		err = FUNC25(uaa->device, &ifidx,
		    sc->sc_uc_xfer[sc->sc_nucom] + start,
		    usie_uc_config + start, USIE_UC_N_XFER - start,
		    &sc->sc_ucom[sc->sc_nucom], &sc->sc_mtx);

		if (err != 0) {
			FUNC0("usbd_transfer_setup error=%s\n", FUNC20(err));
			continue;
		}

		FUNC15(&sc->sc_mtx);
		for (; start < USIE_UC_N_XFER; start++)
			FUNC26(sc->sc_uc_xfer[sc->sc_nucom][start]);
		FUNC16(&sc->sc_mtx);

		sc->sc_uc_ifnum[sc->sc_nucom] = id->bInterfaceNumber;

		sc->sc_nucom++;		/* found a port */
	}

	if (sc->sc_nucom == 0) {
		FUNC9(self, "no comports found\n");
		goto detach;
	}

	err = FUNC17(&sc->sc_super_ucom, sc->sc_ucom,
	    sc->sc_nucom, sc, &usie_uc_callback, &sc->sc_mtx);

	if (err != 0) {
		FUNC0("ucom_attach failed\n");
		goto detach;
	}
	FUNC0("Found %d interfaces.\n", sc->sc_nucom);

	/* setup ifnet (Direct IP) */
	sc->sc_ifp = ifp = FUNC11(IFT_OTHER);

	if (ifp == NULL) {
		FUNC9(self, "Could not allocate a network interface\n");
		goto detach;
	}
	FUNC13(ifp, "usie", FUNC8(self));

	ifp->if_softc = sc;
	ifp->if_mtu = USIE_MTU_MAX;
	ifp->if_flags |= IFF_NOARP;
	ifp->if_init = usie_if_init;
	ifp->if_ioctl = usie_if_ioctl;
	ifp->if_start = usie_if_start;
	ifp->if_output = usie_if_output;
	FUNC1(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
	FUNC2(&ifp->if_snd);

	FUNC12(ifp);
	FUNC5(ifp, DLT_RAW, 0);

	if (fwattr & USIE_PM_AUTO) {
		FUNC24(uaa->device, USB_POWER_MODE_SAVE);
		FUNC0("enabling automatic suspend and resume\n");
	} else {
		FUNC24(uaa->device, USB_POWER_MODE_ON);
		FUNC0("USB power is always ON\n");
	}

	FUNC0("device attached\n");
	return (0);

detach:
	FUNC27(self);
	return (ENOMEM);
}