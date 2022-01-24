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
struct usb_interface_descriptor {scalar_t__ bDescriptorType; int bLength; scalar_t__ bInterfaceNumber; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int /*<<< orphan*/  bAlternateSetting; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct usb_config_descriptor {int bConfigurationValue; } ;
struct TYPE_2__ {int bIfaceIndex; scalar_t__ bIfaceNum; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; int /*<<< orphan*/  iface; } ;
struct ulpt_softc {scalar_t__ sc_iface_no; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_fifo_noreset; int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct ulpt_softc*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 scalar_t__ UDESC_INTERFACE ; 
 scalar_t__ UICLASS_PRINTER ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ UIPROTO_PRINTER_BI ; 
 scalar_t__ UISUBCLASS_PRINTER ; 
 int /*<<< orphan*/  ULPT_N_TRANSFER ; 
 int /*<<< orphan*/  UR_GET_DEVICE_ID ; 
 int /*<<< orphan*/  USB_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  USB_SHORT_XFER_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_READ_CLASS_INTERFACE ; 
 struct usb_attach_arg* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ulpt_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int* devinfo ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  ulpt_config ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ulpt_fifo_methods ; 
 int /*<<< orphan*/  FUNC16 (struct ulpt_softc*) ; 
 int /*<<< orphan*/  unlpt_fifo_methods ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct usb_config_descriptor*,void*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct ulpt_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct usb_device_request*,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int) ; 
 struct usb_config_descriptor* FUNC22 (int /*<<< orphan*/ ) ; 
 struct usb_interface_descriptor* FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC25 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulpt_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC4(dev);
	struct ulpt_softc *sc = FUNC6(dev);
	struct usb_interface_descriptor *id;
	int unit = FUNC7(dev);
	int error;
	uint8_t iface_index = uaa->info.bIfaceIndex;
	uint8_t alt_index;

	FUNC1(11, "sc=%p\n", sc);

	sc->sc_dev = dev;
	sc->sc_udev = uaa->device;

	FUNC9(dev);

	FUNC11(&sc->sc_mtx, "ulpt lock", NULL, MTX_DEF | MTX_RECURSE);

	FUNC17(&sc->sc_watchdog, &sc->sc_mtx, 0);

	/* search through all the descriptors looking for bidir mode */

	id = FUNC23(uaa->iface);
	alt_index = 0xFF;
	while (1) {
		if (id == NULL) {
			break;
		}
		if ((id->bDescriptorType == UDESC_INTERFACE) &&
		    (id->bLength >= sizeof(*id))) {
			if (id->bInterfaceNumber != uaa->info.bIfaceNum) {
				break;
			} else {
				alt_index++;
				if ((id->bInterfaceClass == UICLASS_PRINTER) &&
				    (id->bInterfaceSubClass == UISUBCLASS_PRINTER) &&
				    (id->bInterfaceProtocol == UIPROTO_PRINTER_BI)) {
					goto found;
				}
			}
		}
		id = (void *)FUNC18(
		    FUNC22(uaa->device), (void *)id);
	}
	goto detach;

found:

	FUNC0("setting alternate "
	    "config number: %d\n", alt_index);

	if (alt_index) {

		error = FUNC24
		    (uaa->device, iface_index, alt_index);

		if (error) {
			FUNC0("could not set alternate "
			    "config, error=%s\n", FUNC21(error));
			goto detach;
		}
	}
	sc->sc_iface_no = id->bInterfaceNumber;

	error = FUNC25(uaa->device, &iface_index,
	    sc->sc_xfer, ulpt_config, ULPT_N_TRANSFER,
	    sc, &sc->sc_mtx);
	if (error) {
		FUNC0("error=%s\n", FUNC21(error));
		goto detach;
	}
	FUNC8(sc->sc_dev, "using bi-directional mode\n");

#if 0
/*
 * This code is disabled because for some mysterious reason it causes
 * printing not to work.  But only sometimes, and mostly with
 * UHCI and less often with OHCI.  *sigh*
 */
	{
		struct usb_config_descriptor *cd = usbd_get_config_descriptor(dev);
		struct usb_device_request req;
		int len, alen;

		req.bmRequestType = UT_READ_CLASS_INTERFACE;
		req.bRequest = UR_GET_DEVICE_ID;
		USETW(req.wValue, cd->bConfigurationValue);
		USETW2(req.wIndex, id->bInterfaceNumber, id->bAlternateSetting);
		USETW(req.wLength, sizeof devinfo - 1);
		error = usbd_do_request_flags(dev, &req, devinfo, USB_SHORT_XFER_OK,
		    &alen, USB_DEFAULT_TIMEOUT);
		if (error) {
			device_printf(sc->sc_dev, "cannot get device id\n");
		} else if (alen <= 2) {
			device_printf(sc->sc_dev, "empty device id, no "
			    "printer connected?\n");
		} else {
			/* devinfo now contains an IEEE-1284 device ID */
			len = ((devinfo[0] & 0xff) << 8) | (devinfo[1] & 0xff);
			if (len > sizeof devinfo - 3)
				len = sizeof devinfo - 3;
			devinfo[len] = 0;
			printf("%s: device id <", device_get_nameunit(sc->sc_dev));
			ieee1284_print_id(devinfo + 2);
			printf(">\n");
		}
	}
#endif

	error = FUNC19(uaa->device, sc, &sc->sc_mtx,
	    &ulpt_fifo_methods, &sc->sc_fifo,
	    unit, -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644);
	if (error) {
		goto detach;
	}
	error = FUNC19(uaa->device, sc, &sc->sc_mtx,
	    &unlpt_fifo_methods, &sc->sc_fifo_noreset,
	    unit, -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644);
	if (error) {
		goto detach;
	}
	/* start reading of status */

	FUNC12(&sc->sc_mtx);
	FUNC16(sc);
	FUNC13(&sc->sc_mtx);
	return (0);

detach:
	FUNC15(dev);
	return (ENOMEM);
}