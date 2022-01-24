#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_3__ info; } ;
struct ums_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_evdev; struct ums_info* sc_info; int /*<<< orphan*/  sc_fifo; scalar_t__ sc_iid; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_callout; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  pos; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  pos; } ;
struct TYPE_13__ {int pos; int size; } ;
struct TYPE_12__ {int pos; int size; } ;
struct TYPE_11__ {int pos; int size; } ;
struct ums_info {int sc_flags; int sc_buttons; int /*<<< orphan*/ * sc_iid_btn; TYPE_7__* sc_loc_btn; int /*<<< orphan*/  sc_iid_w; TYPE_2__ sc_loc_w; int /*<<< orphan*/  sc_iid_t; TYPE_1__ sc_loc_t; int /*<<< orphan*/  sc_iid_z; TYPE_6__ sc_loc_z; int /*<<< orphan*/  sc_iid_y; TYPE_5__ sc_loc_y; int /*<<< orphan*/  sc_iid_x; TYPE_4__ sc_loc_x; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_14__ {int pos; int size; } ;

/* Variables and functions */
 scalar_t__ BTN_MOUSE ; 
 int /*<<< orphan*/  BUS_USB ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct ums_softc*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  EV_SYN ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ums_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int UMS_FLAG_REVZ ; 
 int UMS_FLAG_SBU ; 
 int UMS_FLAG_T_AXIS ; 
 int UMS_FLAG_X_AXIS ; 
 int UMS_FLAG_Y_AXIS ; 
 int UMS_FLAG_Z_AXIS ; 
 size_t UMS_INFO_MAX ; 
 size_t UMS_INTR_DT ; 
 int /*<<< orphan*/  UMS_N_TRANSFER ; 
 int /*<<< orphan*/  UQ_MS_BAD_CLASS ; 
 int /*<<< orphan*/  UQ_MS_REVZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ums_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct ums_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_input ; 
 int FUNC25 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ums_config ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ums_evdev_methods ; 
 int /*<<< orphan*/  ums_fifo_methods ; 
 int /*<<< orphan*/  FUNC28 (struct ums_softc*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ums_sysctl_handler_parseinfo ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,struct ums_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (struct usb_attach_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ums_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC38(device_t dev)
{
	struct usb_attach_arg *uaa = FUNC5(dev);
	struct ums_softc *sc = FUNC7(dev);
	struct ums_info *info;
	void *d_ptr = NULL;
	int isize;
	int err;
	uint16_t d_len;
	uint8_t i;
#ifdef USB_DEBUG
	uint8_t j;
#endif

	FUNC1(11, "sc=%p\n", sc);

	FUNC12(dev);

	FUNC26(&sc->sc_mtx, "ums lock", NULL, MTX_DEF | MTX_RECURSE);

	FUNC29(&sc->sc_callout, &sc->sc_mtx, 0);

	/*
         * Force the report (non-boot) protocol.
         *
         * Mice without boot protocol support may choose not to implement
         * Set_Protocol at all; Ignore any error.
         */
	err = FUNC35(uaa->device, NULL,
	    uaa->info.bIfaceIndex, 1);

	err = FUNC36(uaa->device,
	    &uaa->info.bIfaceIndex, sc->sc_xfer, ums_config,
	    UMS_N_TRANSFER, sc, &sc->sc_mtx);

	if (err) {
		FUNC0("error=%s\n", FUNC33(err));
		goto detach;
	}

	/* Get HID descriptor */
	err = FUNC34(uaa->device, NULL, &d_ptr,
	    &d_len, M_TEMP, uaa->info.bIfaceIndex);

	if (err) {
		FUNC11(dev, "error reading report description\n");
		goto detach;
	}

	isize = FUNC25(d_ptr, d_len, hid_input, &sc->sc_iid);

	/*
	 * The Microsoft Wireless Notebook Optical Mouse seems to be in worse
	 * shape than the Wireless Intellimouse 2.0, as its X, Y, wheel, and
	 * all of its other button positions are all off. It also reports that
	 * it has two additional buttons and a tilt wheel.
	 */
	if (FUNC32(uaa, UQ_MS_BAD_CLASS)) {

		sc->sc_iid = 0;

		info = &sc->sc_info[0];
		info->sc_flags = (UMS_FLAG_X_AXIS |
		    UMS_FLAG_Y_AXIS |
		    UMS_FLAG_Z_AXIS |
		    UMS_FLAG_SBU);
		info->sc_buttons = 3;
		isize = 5;
		/* 1st byte of descriptor report contains garbage */
		info->sc_loc_x.pos = 16;
		info->sc_loc_x.size = 8;
		info->sc_loc_y.pos = 24;
		info->sc_loc_y.size = 8;
		info->sc_loc_z.pos = 32;
		info->sc_loc_z.size = 8;
		info->sc_loc_btn[0].pos = 8;
		info->sc_loc_btn[0].size = 1;
		info->sc_loc_btn[1].pos = 9;
		info->sc_loc_btn[1].size = 1;
		info->sc_loc_btn[2].pos = 10;
		info->sc_loc_btn[2].size = 1;

		/* Announce device */
		FUNC11(dev, "3 buttons and [XYZ] "
		    "coordinates ID=0\n");

	} else {
		/* Search the HID descriptor and announce device */
		for (i = 0; i < UMS_INFO_MAX; i++) {
			FUNC28(sc, dev, d_ptr, d_len, i);
		}
	}

	if (FUNC32(uaa, UQ_MS_REVZ)) {
		info = &sc->sc_info[0];
		/* Some wheels need the Z axis reversed. */
		info->sc_flags |= UMS_FLAG_REVZ;
	}
	if (isize > (int)FUNC37(sc->sc_xfer[UMS_INTR_DT])) {
		FUNC0("WARNING: report size, %d bytes, is larger "
		    "than interrupt size, %d bytes!\n", isize,
		    FUNC37(sc->sc_xfer[UMS_INTR_DT]));
	}
	FUNC24(d_ptr, M_TEMP);
	d_ptr = NULL;

#ifdef USB_DEBUG
	for (j = 0; j < UMS_INFO_MAX; j++) {
		info = &sc->sc_info[j];

		DPRINTF("sc=%p, index=%d\n", sc, j);
		DPRINTF("X\t%d/%d id=%d\n", info->sc_loc_x.pos,
		    info->sc_loc_x.size, info->sc_iid_x);
		DPRINTF("Y\t%d/%d id=%d\n", info->sc_loc_y.pos,
		    info->sc_loc_y.size, info->sc_iid_y);
		DPRINTF("Z\t%d/%d id=%d\n", info->sc_loc_z.pos,
		    info->sc_loc_z.size, info->sc_iid_z);
		DPRINTF("T\t%d/%d id=%d\n", info->sc_loc_t.pos,
		    info->sc_loc_t.size, info->sc_iid_t);
		DPRINTF("W\t%d/%d id=%d\n", info->sc_loc_w.pos,
		    info->sc_loc_w.size, info->sc_iid_w);

		for (i = 0; i < info->sc_buttons; i++) {
			DPRINTF("B%d\t%d/%d id=%d\n",
			    i + 1, info->sc_loc_btn[i].pos,
			    info->sc_loc_btn[i].size, info->sc_iid_btn[i]);
		}
	}
	DPRINTF("size=%d, id=%d\n", isize, sc->sc_iid);
#endif

	err = FUNC30(uaa->device, sc, &sc->sc_mtx,
	    &ums_fifo_methods, &sc->sc_fifo,
	    FUNC10(dev), -1, uaa->info.bIfaceIndex,
  	    UID_ROOT, GID_OPERATOR, 0644);
	if (err)
		goto detach;

#ifdef EVDEV_SUPPORT
	sc->sc_evdev = evdev_alloc();
	evdev_set_name(sc->sc_evdev, device_get_desc(dev));
	evdev_set_phys(sc->sc_evdev, device_get_nameunit(dev));
	evdev_set_id(sc->sc_evdev, BUS_USB, uaa->info.idVendor,
	    uaa->info.idProduct, 0);
	evdev_set_serial(sc->sc_evdev, usb_get_serial(uaa->device));
	evdev_set_methods(sc->sc_evdev, sc, &ums_evdev_methods);
	evdev_support_prop(sc->sc_evdev, INPUT_PROP_POINTER);
	evdev_support_event(sc->sc_evdev, EV_SYN);
	evdev_support_event(sc->sc_evdev, EV_REL);
	evdev_support_event(sc->sc_evdev, EV_KEY);

	info = &sc->sc_info[0];

	if (info->sc_flags & UMS_FLAG_X_AXIS)
		evdev_support_rel(sc->sc_evdev, REL_X);

	if (info->sc_flags & UMS_FLAG_Y_AXIS)
		evdev_support_rel(sc->sc_evdev, REL_Y);

	if (info->sc_flags & UMS_FLAG_Z_AXIS)
		evdev_support_rel(sc->sc_evdev, REL_WHEEL);

	if (info->sc_flags & UMS_FLAG_T_AXIS)
		evdev_support_rel(sc->sc_evdev, REL_HWHEEL);

	for (i = 0; i < info->sc_buttons; i++)
		evdev_support_key(sc->sc_evdev, BTN_MOUSE + i);

	err = evdev_register_mtx(sc->sc_evdev, &sc->sc_mtx);
	if (err)
		goto detach;
#endif

	FUNC2(FUNC8(dev),
	    FUNC3(FUNC9(dev)),
	    OID_AUTO, "parseinfo", CTLTYPE_STRING|CTLFLAG_RD,
	    sc, 0, ums_sysctl_handler_parseinfo,
	    "", "Dump of parsed HID report descriptor");

	return (0);

detach:
	if (d_ptr) {
		FUNC24(d_ptr, M_TEMP);
	}
	FUNC27(dev);
	return (ENOMEM);
}