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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_3__ info; } ;
struct ugold_softc {int* sc_iface_index; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/ * sc_valid; int /*<<< orphan*/ * sc_calib; int /*<<< orphan*/ * sc_sensor; int /*<<< orphan*/  sc_report_id; int /*<<< orphan*/  sc_callout; TYPE_2__* sc_readout_msg; int /*<<< orphan*/  sc_udev; } ;
struct sysctl_oid {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_5__ {struct ugold_softc* sc; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RWTUN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 size_t UGOLD_INNER ; 
 size_t UGOLD_INTR_DT ; 
 int /*<<< orphan*/  UGOLD_N_TRANSFER ; 
 size_t UGOLD_OUTER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_attach_arg* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ugold_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hid_input ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ugold_config ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ugold_readout_msg ; 
 int /*<<< orphan*/  FUNC16 (struct ugold_softc*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ugold_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
	struct ugold_softc *sc = FUNC6(dev);
	struct usb_attach_arg *uaa = FUNC5(dev);
	struct sysctl_oid *sensor_tree;
	uint16_t d_len;
	void *d_ptr;
	int error;
	int i;

	sc->sc_udev = uaa->device;
	sc->sc_readout_msg[0].hdr.pm_callback = &ugold_readout_msg;
	sc->sc_readout_msg[0].sc = sc;
	sc->sc_readout_msg[1].hdr.pm_callback = &ugold_readout_msg;
	sc->sc_readout_msg[1].sc = sc;
	sc->sc_iface_index[0] = uaa->info.bIfaceIndex;
	sc->sc_iface_index[1] = uaa->info.bIfaceIndex + 1;

	FUNC9(dev);
	FUNC12(&sc->sc_mtx, "ugold lock", NULL, MTX_DEF | MTX_RECURSE);
	FUNC4(&sc->sc_callout, &sc->sc_mtx, 0);

	/* grab all interfaces from other drivers */
	for (i = 0;; i++) {
		if (i == uaa->info.bIfaceIndex)
			continue;
		if (FUNC18(uaa->device, i) == NULL)
			break;

		FUNC20(uaa->device, i, uaa->info.bIfaceIndex);
	}

	/* figure out report ID */
	error = FUNC19(uaa->device, NULL,
	    &d_ptr, &d_len, M_TEMP, uaa->info.bIfaceIndex);

	if (error)
		goto detach;

	(void)FUNC11(d_ptr, d_len, hid_input, &sc->sc_report_id);

	FUNC10(d_ptr, M_TEMP);

	error = FUNC21(uaa->device,
	    sc->sc_iface_index, sc->sc_xfer, ugold_config,
	    UGOLD_N_TRANSFER, sc, &sc->sc_mtx);
	if (error)
		goto detach;

	sensor_tree = FUNC2(FUNC7(dev),
	    FUNC3(FUNC8(dev)), OID_AUTO, "sensors",
	    CTLFLAG_RD, NULL, "");

	if (sensor_tree == NULL) {
		error = ENOMEM;
		goto detach;
	}
	FUNC1(FUNC7(dev),
	    FUNC3(sensor_tree),
	    OID_AUTO, "inner", CTLFLAG_RD, &sc->sc_sensor[UGOLD_INNER], 0,
	    "Inner temperature in microCelcius");

	FUNC1(FUNC7(dev),
	    FUNC3(sensor_tree),
	    OID_AUTO, "inner_valid", CTLFLAG_RD, &sc->sc_valid[UGOLD_INNER], 0,
	    "Inner temperature is valid");

	FUNC1(FUNC7(dev),
	    FUNC3(sensor_tree),
	    OID_AUTO, "inner_calib", CTLFLAG_RWTUN, &sc->sc_calib[UGOLD_INNER], 0,
	    "Inner calibration temperature in microCelcius");
	
	FUNC1(FUNC7(dev),
	    FUNC3(sensor_tree),
	    OID_AUTO, "outer", CTLFLAG_RD, &sc->sc_sensor[UGOLD_OUTER], 0,
	    "Outer temperature in microCelcius");

	FUNC1(FUNC7(dev),
	    FUNC3(sensor_tree),
	    OID_AUTO, "outer_calib", CTLFLAG_RWTUN, &sc->sc_calib[UGOLD_OUTER], 0,
	    "Outer calibration temperature in microCelcius");

	FUNC1(FUNC7(dev),
	    FUNC3(sensor_tree),
	    OID_AUTO, "outer_valid", CTLFLAG_RD, &sc->sc_valid[UGOLD_OUTER], 0,
	    "Outer temperature is valid");

	FUNC13(&sc->sc_mtx);
	FUNC22(sc->sc_xfer[UGOLD_INTR_DT]);
	FUNC16(sc);
	FUNC14(&sc->sc_mtx);

	return (0);

detach:
	FUNC0("error=%s\n", FUNC17(error));
	FUNC15(dev);
	return (error);
}