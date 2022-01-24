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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int rate; int /*<<< orphan*/ * syncmask; int /*<<< orphan*/  packetsize; int /*<<< orphan*/  resolution; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int buttons; int /*<<< orphan*/  model; int /*<<< orphan*/  type; int /*<<< orphan*/  iftype; } ;
struct wsp_softc {scalar_t__ tp_datalen; int /*<<< orphan*/  scr_mode; int /*<<< orphan*/  sc_touch; TYPE_3__ sc_mode; TYPE_2__ sc_hw; int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_usb_device; int /*<<< orphan*/  sc_xfer; scalar_t__ sc_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct wsp_softc*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  MOUSE_IF_USB ; 
 int /*<<< orphan*/  MOUSE_MODEL_GENERIC ; 
 int /*<<< orphan*/  MOUSE_MSC_PACKETSIZE ; 
 int /*<<< orphan*/  MOUSE_MSC_SYNC ; 
 int /*<<< orphan*/  MOUSE_MSC_SYNCMASK ; 
 int /*<<< orphan*/  MOUSE_PAD ; 
 int /*<<< orphan*/  MOUSE_PROTO_MSC ; 
 int /*<<< orphan*/  MOUSE_RES_UNKNOWN ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 scalar_t__ FUNC2 (struct usb_attach_arg*) ; 
 scalar_t__ WSP_BUFFER_MAX ; 
 int /*<<< orphan*/  WSP_LLEVEL_INFO ; 
 int /*<<< orphan*/  WSP_N_TRANSFER ; 
 int /*<<< orphan*/  WSP_SCR_NONE ; 
 int /*<<< orphan*/  WSP_UNTOUCH ; 
 struct usb_attach_arg* FUNC3 (int /*<<< orphan*/ ) ; 
 struct wsp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_input ; 
 scalar_t__ FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct wsp_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wsp_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wsp_config ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ wsp_dev_params ; 
 int /*<<< orphan*/  wsp_fifo_methods ; 
 scalar_t__ FUNC15 (struct wsp_softc*,int) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct wsp_softc *sc = FUNC4(dev);
	struct usb_attach_arg *uaa = FUNC3(dev);
	usb_error_t err;
	void *d_ptr = NULL;
	uint16_t d_len;

	FUNC1(WSP_LLEVEL_INFO, "sc=%p\n", sc);

	/* Get HID descriptor */
	err = FUNC12(uaa->device, NULL, &d_ptr,
	    &d_len, M_TEMP, uaa->info.bIfaceIndex);

	if (err == USB_ERR_NORMAL_COMPLETION) {
		/* Get HID report descriptor length */
		sc->tp_datalen = FUNC8(d_ptr, d_len, hid_input, NULL);
		FUNC7(d_ptr, M_TEMP);

		if (sc->tp_datalen <= 0 || sc->tp_datalen > WSP_BUFFER_MAX) {
			FUNC0("Invalid datalength or too big "
			    "datalength: %d\n", sc->tp_datalen);
			return (ENXIO);
		}
	} else {
		return (ENXIO);
	}

	sc->sc_usb_device = uaa->device;

	/* get device specific configuration */
	sc->sc_params = wsp_dev_params + FUNC2(uaa);

	/*
	 * By default the touchpad behaves like a HID device, sending
	 * packets with reportID = 8. Such reports contain only
	 * limited information. They encode movement deltas and button
	 * events, but do not include data from the pressure
	 * sensors. The device input mode can be switched from HID
	 * reports to raw sensor data using vendor-specific USB
	 * control commands:
	 */

	/*
	 * During re-enumeration of the device we need to force the
	 * device back into HID mode before switching it to RAW
	 * mode. Else the device does not work like expected.
	 */
	err = FUNC15(sc, 0);
	if (err != USB_ERR_NORMAL_COMPLETION) {
		FUNC0("Failed to set mode to HID MODE (%d)\n", err);
		return (ENXIO);
	}

	err = FUNC15(sc, 1);
	if (err != USB_ERR_NORMAL_COMPLETION) {
		FUNC0("failed to set mode to RAW MODE (%d)\n", err);
		return (ENXIO);
	}

	FUNC9(&sc->sc_mutex, "wspmtx", NULL, MTX_DEF | MTX_RECURSE);

	err = FUNC13(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, wsp_config,
	    WSP_N_TRANSFER, sc, &sc->sc_mutex);
	if (err) {
		FUNC0("error=%s\n", FUNC11(err));
		goto detach;
	}
	if (FUNC10(sc->sc_usb_device, sc, &sc->sc_mutex,
	    &wsp_fifo_methods, &sc->sc_fifo,
	    FUNC5(dev), -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644)) {
		goto detach;
	}
	FUNC6(dev);

	sc->sc_hw.buttons = 3;
	sc->sc_hw.iftype = MOUSE_IF_USB;
	sc->sc_hw.type = MOUSE_PAD;
	sc->sc_hw.model = MOUSE_MODEL_GENERIC;
	sc->sc_mode.protocol = MOUSE_PROTO_MSC;
	sc->sc_mode.rate = -1;
	sc->sc_mode.resolution = MOUSE_RES_UNKNOWN;
	sc->sc_mode.packetsize = MOUSE_MSC_PACKETSIZE;
	sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
	sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;

	sc->sc_touch = WSP_UNTOUCH;
	sc->scr_mode = WSP_SCR_NONE;

	return (0);

detach:
	FUNC14(dev);
	return (ENOMEM);
}