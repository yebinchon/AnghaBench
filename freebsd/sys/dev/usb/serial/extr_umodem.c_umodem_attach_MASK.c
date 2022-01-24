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
struct usb_interface_descriptor {scalar_t__ bInterfaceNumber; } ;
struct usb_interface {int dummy; } ;
struct usb_cdc_union_descriptor {int bLength; int* bSlaveInterface; } ;
struct usb_cdc_cm_descriptor {int bLength; int bDataInterface; } ;
struct TYPE_2__ {int bIfaceNum; scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct umodem_softc {int sc_ctrl_iface_no; int sc_cm_cap; int sc_acm_cap; int sc_data_iface_no; int sc_cm_over_data; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/ * sc_xfer; scalar_t__* sc_iface_index; int /*<<< orphan*/  sc_udev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  UCDC_ABSTRACT_STATE ; 
 int /*<<< orphan*/  UCDC_DATA_MULTIPLEXED ; 
 int /*<<< orphan*/  UDESCSUB_CDC_CM ; 
 int /*<<< orphan*/  UDESCSUB_CDC_UNION ; 
 int /*<<< orphan*/  UDESC_CS_INTERFACE ; 
 size_t UMODEM_BULK_RD ; 
 size_t UMODEM_BULK_WR ; 
 int /*<<< orphan*/  UMODEM_N_TRANSFER ; 
 int /*<<< orphan*/  UQ_ASSUME_CM_OVER_DATA ; 
 int USB_CDC_ACM_HAS_BREAK ; 
 int USB_CDC_ACM_HAS_FEATURE ; 
 int USB_CDC_CM_OVER_DATA ; 
 scalar_t__ USB_MODE_HOST ; 
 struct usb_attach_arg* FUNC1 (int /*<<< orphan*/ ) ; 
 struct umodem_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct umodem_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  umodem_callback ; 
 int /*<<< orphan*/  umodem_config ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_attach_arg*,scalar_t__,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_attach_arg*,int*,int*) ; 
 struct usb_cdc_cm_descriptor* FUNC15 (struct usb_attach_arg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 struct usb_cdc_union_descriptor* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct usb_interface* FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct usb_interface_descriptor* FUNC20 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC22 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umodem_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC1(dev);
	struct umodem_softc *sc = FUNC2(dev);
	struct usb_cdc_cm_descriptor *cmd;
	struct usb_cdc_union_descriptor *cud;
	uint8_t i;
	int error;

	FUNC4(dev);
	FUNC5(&sc->sc_mtx, "umodem", NULL, MTX_DEF);
	FUNC9(&sc->sc_super_ucom);

	sc->sc_ctrl_iface_no = uaa->info.bIfaceNum;
	sc->sc_iface_index[1] = uaa->info.bIfaceIndex;
	sc->sc_udev = uaa->device;

	FUNC14(uaa, &sc->sc_cm_cap, &sc->sc_acm_cap);

	/* get the data interface number */

	cmd = FUNC15(uaa, UDESC_CS_INTERFACE, UDESCSUB_CDC_CM);

	if ((cmd == NULL) || (cmd->bLength < sizeof(*cmd))) {

		cud = FUNC18(uaa->device, NULL,
		    uaa->info.bIfaceIndex, UDESC_CS_INTERFACE,
		    0xFF, UDESCSUB_CDC_UNION, 0xFF);

		if ((cud == NULL) || (cud->bLength < sizeof(*cud))) {
			FUNC0("Missing descriptor. "
			    "Assuming data interface is next.\n");
			if (sc->sc_ctrl_iface_no == 0xFF) {
				goto detach;
			} else {
				uint8_t class_match = 0;

				/* set default interface number */
				sc->sc_data_iface_no = 0xFF;

				/* try to find the data interface backwards */
				FUNC13(uaa,
				    uaa->info.bIfaceIndex - 1,
				    &sc->sc_data_iface_no, &class_match);

				/* try to find the data interface forwards */
				FUNC13(uaa,
				    uaa->info.bIfaceIndex + 1,
				    &sc->sc_data_iface_no, &class_match);

				/* check if nothing was found */
				if (sc->sc_data_iface_no == 0xFF)
					goto detach;
			}
		} else {
			sc->sc_data_iface_no = cud->bSlaveInterface[0];
		}
	} else {
		sc->sc_data_iface_no = cmd->bDataInterface;
	}

	FUNC3(dev, "data interface %d, has %sCM over "
	    "data, has %sbreak\n",
	    sc->sc_data_iface_no,
	    sc->sc_cm_cap & USB_CDC_CM_OVER_DATA ? "" : "no ",
	    sc->sc_acm_cap & USB_CDC_ACM_HAS_BREAK ? "" : "no ");

	/* get the data interface too */

	for (i = 0;; i++) {
		struct usb_interface *iface;
		struct usb_interface_descriptor *id;

		iface = FUNC19(uaa->device, i);

		if (iface) {

			id = FUNC20(iface);

			if (id && (id->bInterfaceNumber == sc->sc_data_iface_no)) {
				sc->sc_iface_index[0] = i;
				FUNC21(uaa->device, i, uaa->info.bIfaceIndex);
				break;
			}
		} else {
			FUNC3(dev, "no data interface\n");
			goto detach;
		}
	}

	if (FUNC17(uaa, UQ_ASSUME_CM_OVER_DATA)) {
		sc->sc_cm_over_data = 1;
	} else {
		if (sc->sc_cm_cap & USB_CDC_CM_OVER_DATA) {
			if (sc->sc_acm_cap & USB_CDC_ACM_HAS_FEATURE) {

				error = FUNC16
				(uaa->device, sc->sc_ctrl_iface_no,
				 UCDC_ABSTRACT_STATE, UCDC_DATA_MULTIPLEXED);

				/* ignore any errors */
			}
			sc->sc_cm_over_data = 1;
		}
	}
	error = FUNC22(uaa->device,
	    sc->sc_iface_index, sc->sc_xfer,
	    umodem_config, UMODEM_N_TRANSFER,
	    sc, &sc->sc_mtx);
	if (error) {
		FUNC3(dev, "Can't setup transfer\n");
		goto detach;
	}

	/* clear stall at first run, if USB host mode */
	if (uaa->usb_mode == USB_MODE_HOST) {
		FUNC6(&sc->sc_mtx);
		FUNC23(sc->sc_xfer[UMODEM_BULK_WR]);
		FUNC23(sc->sc_xfer[UMODEM_BULK_RD]);
		FUNC7(&sc->sc_mtx);
	}

	FUNC11(&sc->sc_super_ucom, uaa->usb_mode);

	error = FUNC8(&sc->sc_super_ucom, &sc->sc_ucom, 1, sc,
	    &umodem_callback, &sc->sc_mtx);
	if (error) {
		FUNC3(dev, "Can't attach com\n");
		goto detach;
	}
	FUNC10(&sc->sc_super_ucom, dev);

	return (0);

detach:
	FUNC12(dev);
	return (ENXIO);
}