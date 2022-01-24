#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * fingers; } ;
struct TYPE_6__ {int buttons; } ;
struct TYPE_8__ {int fwversion; int hwversion; int issemimt; int isclickpad; int hascrc; int haspressure; int ntracesx; int ntracesy; int hastrackpoint; int dpmmx; int dpmmy; int dptracex; int dptracey; int sizex; int sizey; } ;
struct psm_softc {TYPE_2__ elanaction; TYPE_1__ hw; TYPE_3__ elanhw; int /*<<< orphan*/  kbdc; } ;
typedef  enum probearg { ____Placeholder_probearg } probearg ;
typedef  TYPE_3__ elantechhw_t ;
typedef  int /*<<< orphan*/  elanhw ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  ELANTECH_CAPABILITIES ; 
 int /*<<< orphan*/  ELANTECH_FW_ID ; 
 int /*<<< orphan*/  ELANTECH_FW_VERSION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int ELANTECH_MAX_FINGERS ; 
 int /*<<< orphan*/  ELANTECH_RESOLUTION ; 
 int /*<<< orphan*/  ELANTECH_SAMPLE ; 
 int FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int PROBE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct psm_softc*) ; 
 int /*<<< orphan*/  elantech_support ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (int,int) ; 
 int FUNC10 (int const**) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int verbose ; 

__attribute__((used)) static int
FUNC13(struct psm_softc *sc, enum probearg arg)
{
	static const int ic2hw[] =
	/*IC: 0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f */
	    { 0, 0, 2, 0, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 };
	static const int fw_sizes[][3] = {
		/* FW.vers  MaxX  MaxY */
		{ 0x020030, 1152,  768 },
		{ 0x020800, 1152,  768 },
		{ 0x020b00, 1152,  768 },
		{ 0x040215,  900,  500 },
		{ 0x040216,  819,  405 },
		{ 0x040219,  900,  500 },
	};
	elantechhw_t elanhw;
	int icversion, hwversion, xtr, i, id, resp[3], dpix, dpiy;
	KBDC kbdc = sc->kbdc;

	FUNC3(3, (LOG_DEBUG, "elantech: BEGIN init\n"));

	FUNC12(kbdc, 1);
	FUNC12(kbdc, 1);
	FUNC12(kbdc, 1);
	if (FUNC8(kbdc, resp, 0, 3) != 3)
		return (FALSE);

	if (!FUNC1(resp))
		return (FALSE);

	/* Identify the Touchpad version. */
	if (FUNC5(kbdc, 2, ELANTECH_FW_VERSION, resp))
		return (FALSE);

	FUNC4(&elanhw, sizeof(elanhw));

	elanhw.fwversion = (resp[0] << 16) | (resp[1] << 8) | resp[2];
	icversion = resp[0] & 0x0f;
	hwversion = ic2hw[icversion];

	if (verbose >= 2)
		FUNC11("Elantech touchpad hardware v.%d firmware v.0x%06x\n",
		    hwversion, elanhw.fwversion);

	if (FUNC0(elanhw.fwversion)) {
		FUNC11 ("  Unsupported touchpad hardware (v1)\n");
		return (FALSE);
	}
	if (hwversion == 0) {
		FUNC11 ("  Unknown touchpad hardware (firmware v.0x%06x)\n",
		    elanhw.fwversion);
		return (FALSE);
	}

	/* Get the Touchpad model information. */
	elanhw.hwversion = hwversion;
	elanhw.issemimt = hwversion == 2;
	elanhw.isclickpad = (resp[1] & 0x10) != 0;
	elanhw.hascrc = (resp[1] & 0x40) != 0;
	elanhw.haspressure = elanhw.fwversion >= 0x020800;

	/* Read the capability bits. */
	if (FUNC5(kbdc, hwversion, ELANTECH_CAPABILITIES, resp) != 0) {
		FUNC11("  Failed to read capability bits\n");
		return (FALSE);
	}

	elanhw.ntracesx = FUNC9(resp[1], 3);
	elanhw.ntracesy = FUNC9(resp[2], 3);
	elanhw.hastrackpoint = (resp[0] & 0x80) != 0;

	/* Get the touchpad resolution */
	switch (hwversion) {
	case 4:
		if (FUNC5(kbdc, hwversion, ELANTECH_RESOLUTION, resp)
		    == 0) {
			dpix = (resp[1] & 0x0f) * 10 + 790;
			dpiy = ((resp[1] & 0xf0) >> 4) * 10 + 790;
			elanhw.dpmmx = (dpix * 10 + 5) / 254;
			elanhw.dpmmy = (dpiy * 10 + 5) / 254;
			break;
		}
		/* FALLTHROUGH */
	case 2:
	case 3:
		elanhw.dpmmx = elanhw.dpmmy = 32; /* 800 dpi */
		break;
	}

	if (!elantech_support)
		return (FALSE);

	if (FUNC6(kbdc, &elanhw)) {
		FUNC11("couldn't initialize elantech touchpad\n");
		return (FALSE);
	}

	/*
	 * Get the touchpad reporting range.
	 * On HW v.3 touchpads it should be done after switching hardware
	 * to real resolution mode (by setting bit 3 of reg10)
	 */
	elanhw.dptracex = elanhw.dptracey = 64;
	for (i = 0; i < FUNC10(fw_sizes); i++) {
		if (elanhw.fwversion == fw_sizes[i][0]) {
			elanhw.sizex = fw_sizes[i][1];
			elanhw.sizey = fw_sizes[i][2];
			goto found;
		}
	}
	if (FUNC5(kbdc, hwversion, ELANTECH_FW_ID, resp) != 0) {
		FUNC11("  Failed to read touchpad size\n");
		elanhw.sizex = 10000; /* Arbitrary high values to     */
		elanhw.sizey = 10000; /* prevent clipping in smoother */
	} else if (hwversion == 2) {
		if ((elanhw.fwversion >> 16) == 0x14 && (resp[1] & 0x10) &&
		    !FUNC5(kbdc, hwversion, ELANTECH_SAMPLE, resp)) {
			elanhw.dptracex = resp[1] / 2;
			elanhw.dptracey = resp[2] / 2;
		}
		xtr = ((elanhw.fwversion >> 8) == 0x0208) ? 1 : 2;
		elanhw.sizex = (elanhw.ntracesx - xtr) * elanhw.dptracex;
		elanhw.sizey = (elanhw.ntracesy - xtr) * elanhw.dptracey;
	} else {
		elanhw.sizex = (resp[0] & 0x0f) << 8 | resp[1];
		elanhw.sizey = (resp[0] & 0xf0) << 4 | resp[2];
		xtr = (elanhw.sizex % (elanhw.ntracesx - 2) == 0) ? 2 : 1;
		elanhw.dptracex = elanhw.sizex / (elanhw.ntracesx - xtr);
		elanhw.dptracey = elanhw.sizey / (elanhw.ntracesy - xtr);
	}
found:
	if (verbose >= 2) {
		FUNC11("  Model information:\n");
		FUNC11("   MaxX:       %d\n", elanhw.sizex);
		FUNC11("   MaxY:       %d\n", elanhw.sizey);
		FUNC11("   DpmmX:      %d\n", elanhw.dpmmx);
		FUNC11("   DpmmY:      %d\n", elanhw.dpmmy);
		FUNC11("   TracesX:    %d\n", elanhw.ntracesx);
		FUNC11("   TracesY:    %d\n", elanhw.ntracesy);
		FUNC11("   DptraceX:   %d\n", elanhw.dptracex);
		FUNC11("   DptraceY:   %d\n", elanhw.dptracey);
		FUNC11("   SemiMT:     %d\n", elanhw.issemimt);
		FUNC11("   Clickpad:   %d\n", elanhw.isclickpad);
		FUNC11("   Trackpoint: %d\n", elanhw.hastrackpoint);
		FUNC11("   CRC:        %d\n", elanhw.hascrc);
		FUNC11("   Pressure:   %d\n", elanhw.haspressure);
	}

	FUNC3(3, (LOG_DEBUG, "elantech: END init\n"));

	if (arg == PROBE) {
		sc->elanhw = elanhw;
		sc->hw.buttons = 3;

		/* Initialize synaptics movement smoother */
		FUNC7(sc);

		for (id = 0; id < ELANTECH_MAX_FINGERS; id++)
			FUNC2(sc->elanaction.fingers[id]);
	}

	return (TRUE);
}