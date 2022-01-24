#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct usb_port {scalar_t__ restartcnt; scalar_t__ device_index; } ;
struct usb_hub_ss_descriptor {int bNbrPorts; int bPwrOn2PwrGood; } ;
struct usb_hub_descriptor {int bNbrPorts; int bPwrOn2PwrGood; } ;
struct usb_hub {int nports; struct usb_port* ports; int /*<<< orphan*/  portpower; TYPE_2__* tt_msg; struct usb_device* hubudev; int /*<<< orphan*/ * explore; struct uhub_softc* hubsoftc; } ;
struct TYPE_6__ {scalar_t__ self_powered; } ;
struct usb_device {int speed; struct usb_hub* hub; TYPE_3__ flags; struct usb_device* parent_hub; scalar_t__ depth; } ;
struct usb_attach_arg {struct usb_device* device; } ;
struct uhub_softc {scalar_t__ sc_disable_enumeration; scalar_t__ sc_disable_port_power; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; struct usb_hub sc_hub; int /*<<< orphan*/  sc_dev; struct usb_device* sc_udev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  hub ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_5__ {struct usb_device* udev; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hub_ss_descriptor*,int) ; 
 int UHD_PWRON_FACTOR ; 
 int /*<<< orphan*/  UHF_PORT_POWER ; 
 size_t UHUB_INTR_TRANSFER ; 
 scalar_t__ FUNC5 (struct uhub_softc*) ; 
 int /*<<< orphan*/  UHUB_N_TRANSFER ; 
 int USB_MAX_PORTS ; 
 int /*<<< orphan*/  USB_MAX_POWER ; 
 int /*<<< orphan*/  USB_MIN_POWER ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int USB_POWER_DOWN_TIME ; 
 int /*<<< orphan*/  USB_POWER_MODE_SAVE ; 
#define  USB_SPEED_FULL 131 
#define  USB_SPEED_HIGH 130 
#define  USB_SPEED_LOW 129 
#define  USB_SPEED_SUPER 128 
 struct usb_attach_arg* FUNC9 (int /*<<< orphan*/ ) ; 
 struct uhub_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC11 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 struct usb_hub* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uhub_config ; 
 int /*<<< orphan*/  uhub_explore ; 
 scalar_t__ FUNC19 (struct usb_device*) ; 
 int /*<<< orphan*/  uhub_reset_tt_proc ; 
 scalar_t__ usb_disable_port_power ; 
 int usb_extra_power_up_time ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (struct usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct usb_device*,int /*<<< orphan*/ *,struct usb_hub_ss_descriptor*,int) ; 
 scalar_t__ FUNC24 (struct usb_device*,int /*<<< orphan*/ *,struct usb_hub_ss_descriptor*,int) ; 
 scalar_t__ FUNC25 (struct usb_device*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC26 (struct usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct usb_device*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uhub_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC32(device_t dev)
{
	struct uhub_softc *sc = FUNC10(dev);
	struct usb_attach_arg *uaa = FUNC9(dev);
	struct usb_device *udev = uaa->device;
	struct usb_device *parent_hub = udev->parent_hub;
	struct usb_hub *hub;
	struct usb_hub_descriptor hubdesc20;
	struct usb_hub_ss_descriptor hubdesc30;
#if USB_HAVE_DISABLE_ENUM
	struct sysctl_ctx_list *sysctl_ctx;
	struct sysctl_oid *sysctl_tree;
#endif
	uint16_t pwrdly;
	uint16_t nports;
	uint8_t x;
	uint8_t portno;
	uint8_t removable;
	uint8_t iface_index;
	usb_error_t err;

	sc->sc_udev = udev;
	sc->sc_dev = dev;

	FUNC18(&sc->sc_mtx, "USB HUB mutex", NULL, MTX_DEF);

	FUNC14(dev);

	FUNC1(2, "depth=%d selfpowered=%d, parent=%p, "
	    "parent->selfpowered=%d\n",
	    udev->depth,
	    udev->flags.self_powered,
	    parent_hub,
	    parent_hub ?
	    parent_hub->flags.self_powered : 0);

	if (FUNC19(udev)) {
		FUNC1(0, "HUB at depth %d, "
		    "exceeds maximum. HUB ignored\n", (int)udev->depth);
		goto error;
	}

	if (!udev->flags.self_powered && parent_hub &&
	    !parent_hub->flags.self_powered) {
		FUNC1(0, "Bus powered HUB connected to "
		    "bus powered HUB. HUB ignored\n");
		goto error;
	}

	if (FUNC5(sc)) {
		err = FUNC27(udev, 0, 1);
		if (err) {
			FUNC13(dev, "MTT could not be enabled\n");
			goto error;
		}
		FUNC13(dev, "MTT enabled\n");
	}

	/* get HUB descriptor */

	FUNC1(2, "Getting HUB descriptor\n");

	switch (udev->speed) {
	case USB_SPEED_LOW:
	case USB_SPEED_FULL:
	case USB_SPEED_HIGH:
		/* assuming that there is one port */
		err = FUNC23(udev, NULL, &hubdesc20, 1);
		if (err) {
			FUNC1(0, "getting USB 2.0 HUB descriptor failed,"
			    "error=%s\n", FUNC21(err));
			goto error;
		}
		/* get number of ports */
		nports = hubdesc20.bNbrPorts;

		/* get power delay */
		pwrdly = ((hubdesc20.bPwrOn2PwrGood * UHD_PWRON_FACTOR) +
		    usb_extra_power_up_time);

		/* get complete HUB descriptor */
		if (nports >= 8) {
			/* check number of ports */
			if (nports > 127) {
				FUNC1(0, "Invalid number of USB 2.0 ports,"
				    "error=%s\n", FUNC21(err));
				goto error;
			}
			/* get complete HUB descriptor */
			err = FUNC23(udev, NULL, &hubdesc20, nports);

			if (err) {
				FUNC1(0, "Getting USB 2.0 HUB descriptor failed,"
				    "error=%s\n", FUNC21(err));
				goto error;
			}
			if (hubdesc20.bNbrPorts != nports) {
				FUNC1(0, "Number of ports changed\n");
				goto error;
			}
		}
		break;
	case USB_SPEED_SUPER:
		if (udev->parent_hub != NULL) {
			err = FUNC25(udev, NULL,
			    udev->depth - 1);
			if (err) {
				FUNC1(0, "Setting USB 3.0 HUB depth failed,"
				    "error=%s\n", FUNC21(err));
				goto error;
			}
		}
		err = FUNC24(udev, NULL, &hubdesc30, 1);
		if (err) {
			FUNC1(0, "Getting USB 3.0 HUB descriptor failed,"
			    "error=%s\n", FUNC21(err));
			goto error;
		}
		/* get number of ports */
		nports = hubdesc30.bNbrPorts;

		/* get power delay */
		pwrdly = ((hubdesc30.bPwrOn2PwrGood * UHD_PWRON_FACTOR) +
		    usb_extra_power_up_time);

		/* get complete HUB descriptor */
		if (nports >= 8) {
			/* check number of ports */
			if (nports > ((udev->parent_hub != NULL) ? 15 : 127)) {
				FUNC1(0, "Invalid number of USB 3.0 ports,"
				    "error=%s\n", FUNC21(err));
				goto error;
			}
			/* get complete HUB descriptor */
			err = FUNC24(udev, NULL, &hubdesc30, nports);

			if (err) {
				FUNC1(0, "Getting USB 2.0 HUB descriptor failed,"
				    "error=%s\n", FUNC21(err));
				goto error;
			}
			if (hubdesc30.bNbrPorts != nports) {
				FUNC1(0, "Number of ports changed\n");
				goto error;
			}
		}
		break;
	default:
		FUNC0("Assuming HUB has only one port\n");
		/* default number of ports */
		nports = 1;
		/* default power delay */
		pwrdly = ((10 * UHD_PWRON_FACTOR) + usb_extra_power_up_time);
		break;
	}
	if (nports == 0) {
		FUNC1(0, "portless HUB\n");
		goto error;
	}
	if (nports > USB_MAX_PORTS) {
		FUNC0("Port limit exceeded\n");
		goto error;
	}
#if (USB_HAVE_FIXED_PORT == 0)
	hub = FUNC16(sizeof(hub[0]) + (sizeof(hub->ports[0]) * nports),
	    M_USBDEV, M_WAITOK | M_ZERO);

	if (hub == NULL)
		goto error;
#else
	hub = &sc->sc_hub;
#endif
	udev->hub = hub;

	/* initialize HUB structure */
	hub->hubsoftc = sc;
	hub->explore = &uhub_explore;
	hub->nports = nports;
	hub->hubudev = udev;
#if USB_HAVE_TT_SUPPORT
	hub->tt_msg[0].hdr.pm_callback = &uhub_reset_tt_proc;
	hub->tt_msg[0].udev = udev;
	hub->tt_msg[1].hdr.pm_callback = &uhub_reset_tt_proc;
	hub->tt_msg[1].udev = udev;
#endif
	/* if self powered hub, give ports maximum current */
	if (udev->flags.self_powered) {
		hub->portpower = USB_MAX_POWER;
	} else {
		hub->portpower = USB_MIN_POWER;
	}

	/* set up interrupt pipe */
	iface_index = 0;
	if (udev->parent_hub == NULL) {
		/* root HUB is special */
		err = 0;
	} else {
		/* normal HUB */
		err = FUNC29(udev, &iface_index, sc->sc_xfer,
		    uhub_config, UHUB_N_TRANSFER, sc, &sc->sc_mtx);
	}
	if (err) {
		FUNC1(0, "cannot setup interrupt transfer, "
		    "errstr=%s\n", FUNC21(err));
		goto error;
	}
	/* wait with power off for a while */
	FUNC20(NULL, FUNC6(USB_POWER_DOWN_TIME));

#if USB_HAVE_DISABLE_ENUM
	/* Add device sysctls */

	sysctl_ctx = device_get_sysctl_ctx(dev);
	sysctl_tree = device_get_sysctl_tree(dev);

	if (sysctl_ctx != NULL && sysctl_tree != NULL) {
		(void) SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
		    OID_AUTO, "disable_enumeration", CTLFLAG_RWTUN,
		    &sc->sc_disable_enumeration, 0,
		    "Set to disable enumeration on this USB HUB.");

		(void) SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
		    OID_AUTO, "disable_port_power", CTLFLAG_RWTUN,
		    &sc->sc_disable_port_power, 0,
		    "Set to disable USB port power on this USB HUB.");
	}
#endif
	/*
	 * To have the best chance of success we do things in the exact same
	 * order as Windoze98.  This should not be necessary, but some
	 * devices do not follow the USB specs to the letter.
	 *
	 * These are the events on the bus when a hub is attached:
	 *  Get device and config descriptors (see attach code)
	 *  Get hub descriptor (see above)
	 *  For all ports
	 *     turn on power
	 *     wait for power to become stable
	 * (all below happens in explore code)
	 *  For all ports
	 *     clear C_PORT_CONNECTION
	 *  For all ports
	 *     get port status
	 *     if device connected
	 *        wait 100 ms
	 *        turn on reset
	 *        wait
	 *        clear C_PORT_RESET
	 *        get port status
	 *        proceed with device attachment
	 */

	/* XXX should check for none, individual, or ganged power? */

	removable = 0;

	for (x = 0; x != nports; x++) {
		/* set up data structures */
		struct usb_port *up = hub->ports + x;

		up->device_index = 0;
		up->restartcnt = 0;
		portno = x + 1;

		/* check if port is removable */
		switch (udev->speed) {
		case USB_SPEED_LOW:
		case USB_SPEED_FULL:
		case USB_SPEED_HIGH:
			if (!FUNC4(&hubdesc20, portno))
				removable++;
			break;
		case USB_SPEED_SUPER:
			if (!FUNC4(&hubdesc30, portno))
				removable++;
			break;
		default:
			FUNC0("Assuming removable port\n");
			removable++;
			break;
		}
		if (err == 0) {
#if USB_HAVE_DISABLE_ENUM
			/* check if we should disable USB port power or not */
			if (usb_disable_port_power != 0 ||
			    sc->sc_disable_port_power != 0) {
				/* turn the power off */
				DPRINTFN(2, "Turning port %d power off\n", portno);
				err = usbd_req_clear_port_feature(udev, NULL,
				    portno, UHF_PORT_POWER);
			} else {
#endif
				/* turn the power on */
				FUNC1(2, "Turning port %d power on\n", portno);
				err = FUNC26(udev, NULL,
				    portno, UHF_PORT_POWER);
#if USB_HAVE_DISABLE_ENUM
			}
#endif
		}
		if (err != 0) {
			FUNC1(0, "port %d power on or off failed, %s\n",
			    portno, FUNC21(err));
		}
		FUNC0("turn on port %d power\n",
		    portno);

		/* wait for stable power */
		FUNC20(NULL, FUNC6(pwrdly));
	}

	FUNC13(dev, "%d port%s with %d "
	    "removable, %s powered\n", nports, (nports != 1) ? "s" : "",
	    removable, udev->flags.self_powered ? "self" : "bus");

	/* Start the interrupt endpoint, if any */

	FUNC7(&sc->sc_mtx);
	FUNC30(sc->sc_xfer[UHUB_INTR_TRANSFER]);
	FUNC8(&sc->sc_mtx);

	/* Enable automatic power save on all USB HUBs */

	FUNC28(udev, USB_POWER_MODE_SAVE);

	return (0);

error:
	FUNC31(sc->sc_xfer, UHUB_N_TRANSFER);

#if (USB_HAVE_FIXED_PORT == 0)
	FUNC15(udev->hub, M_USBDEV);
#endif
	udev->hub = NULL;

	FUNC17(&sc->sc_mtx);

	return (ENXIO);
}