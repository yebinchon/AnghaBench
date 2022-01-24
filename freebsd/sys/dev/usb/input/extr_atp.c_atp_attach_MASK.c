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
struct TYPE_4__ {int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {TYPE_1__ info; int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int rate; scalar_t__ level; scalar_t__ accelfactor; int /*<<< orphan*/ * syncmask; int /*<<< orphan*/  packetsize; int /*<<< orphan*/  resolution; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {int buttons; scalar_t__ hwid; int /*<<< orphan*/  model; int /*<<< orphan*/  type; int /*<<< orphan*/  iftype; } ;
struct atp_softc {scalar_t__ sc_expected_sensor_data_len; int sc_family; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_callout; scalar_t__ sc_ibtn; scalar_t__ sc_state; TYPE_3__ sc_mode; TYPE_2__ sc_hw; int /*<<< orphan*/  sc_fifo; int /*<<< orphan*/  sc_usb_device; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sensor_data_interpreter; int /*<<< orphan*/ * sc_params; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATP_LLEVEL_INFO ; 
 int /*<<< orphan*/  ATP_N_TRANSFER ; 
 scalar_t__ ATP_SENSOR_DATA_BUF_MAX ; 
 int FUNC0 (unsigned long) ; 
 size_t FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct atp_softc*) ; 
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
 int /*<<< orphan*/  RAW_SENSOR_MODE ; 
#define  TRACKPAD_FAMILY_FOUNTAIN_GEYSER 129 
#define  TRACKPAD_FAMILY_WELLSPRING 128 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 unsigned long FUNC4 (struct usb_attach_arg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atp_fifo_methods ; 
 scalar_t__ FUNC6 (struct atp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atp_xfer_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC8 (int /*<<< orphan*/ ) ; 
 struct atp_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fg_dev_params ; 
 int /*<<< orphan*/  fg_interpret_sensor_data ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_input ; 
 scalar_t__ FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct atp_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atp_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * wsp_dev_params ; 
 int /*<<< orphan*/  wsp_interpret_sensor_data ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct atp_softc      *sc  = FUNC9(dev);
	struct usb_attach_arg *uaa = FUNC8(dev);
	usb_error_t            err;
	void *descriptor_ptr = NULL;
	uint16_t descriptor_len;
	unsigned long di;

	FUNC3(ATP_LLEVEL_INFO, "sc=%p\n", sc);

	sc->sc_dev        = dev;
	sc->sc_usb_device = uaa->device;

	/* Get HID descriptor */
	if (FUNC17(uaa->device, NULL, &descriptor_ptr,
	    &descriptor_len, M_TEMP, uaa->info.bIfaceIndex) !=
	    USB_ERR_NORMAL_COMPLETION)
		return (ENXIO);

	/* Get HID report descriptor length */
	sc->sc_expected_sensor_data_len = FUNC13(descriptor_ptr,
	    descriptor_len, hid_input, NULL);
	FUNC12(descriptor_ptr, M_TEMP);

	if ((sc->sc_expected_sensor_data_len <= 0) ||
	    (sc->sc_expected_sensor_data_len > ATP_SENSOR_DATA_BUF_MAX)) {
		FUNC2("atp_attach: datalength invalid or too large: %d\n",
			sc->sc_expected_sensor_data_len);
		return (ENXIO);
	}

	/*
	 * By default the touchpad behaves like an HID device, sending
	 * packets with reportID = 2. Such reports contain only
	 * limited information--they encode movement deltas and button
	 * events,--but do not include data from the pressure
	 * sensors. The device input mode can be switched from HID
	 * reports to raw sensor data using vendor-specific USB
	 * control commands.
	 */
	if ((err = FUNC6(sc, RAW_SENSOR_MODE)) != 0) {
		FUNC2("failed to set mode to 'RAW_SENSOR' (%d)\n", err);
		return (ENXIO);
	}

	FUNC14(&sc->sc_mutex, "atpmtx", NULL, MTX_DEF | MTX_RECURSE);

	di = FUNC4(uaa);

	sc->sc_family = FUNC0(di);

	switch(sc->sc_family) {
	case TRACKPAD_FAMILY_FOUNTAIN_GEYSER:
		sc->sc_params =
		    &fg_dev_params[FUNC1(di)];
		sc->sensor_data_interpreter = fg_interpret_sensor_data;
		break;
	case TRACKPAD_FAMILY_WELLSPRING:
		sc->sc_params =
		    &wsp_dev_params[FUNC1(di)];
		sc->sensor_data_interpreter = wsp_interpret_sensor_data;
		break;
	default:
		goto detach;
	}

	err = FUNC18(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, atp_xfer_config,
	    ATP_N_TRANSFER, sc, &sc->sc_mutex);
	if (err) {
		FUNC2("error=%s\n", FUNC16(err));
		goto detach;
	}

	if (FUNC15(sc->sc_usb_device, sc, &sc->sc_mutex,
	    &atp_fifo_methods, &sc->sc_fifo,
	    FUNC10(dev), -1, uaa->info.bIfaceIndex,
	    UID_ROOT, GID_OPERATOR, 0644)) {
		goto detach;
	}

	FUNC11(dev);

	sc->sc_hw.buttons       = 3;
	sc->sc_hw.iftype        = MOUSE_IF_USB;
	sc->sc_hw.type          = MOUSE_PAD;
	sc->sc_hw.model         = MOUSE_MODEL_GENERIC;
	sc->sc_hw.hwid          = 0;
	sc->sc_mode.protocol    = MOUSE_PROTO_MSC;
	sc->sc_mode.rate        = -1;
	sc->sc_mode.resolution  = MOUSE_RES_UNKNOWN;
	sc->sc_mode.packetsize  = MOUSE_MSC_PACKETSIZE;
	sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
	sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;
	sc->sc_mode.accelfactor = 0;
	sc->sc_mode.level       = 0;

	sc->sc_state            = 0;
	sc->sc_ibtn             = 0;

	FUNC7(&sc->sc_callout, &sc->sc_mutex, 0);

	return (0);

detach:
	FUNC5(dev);
	return (ENOMEM);
}