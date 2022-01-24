#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  synhw ;
struct TYPE_6__ {int infoMinor; int infoMajor; int infoRot180; int infoPortrait; int infoSensor; int infoHardware; int infoNewAbs; int capPen; int infoSimplC; int infoGeometry; int capExtended; int nExtendedQueries; int capMiddle; int capPassthrough; int capLowPower; int capMultiFingerReport; int capSleep; int capFourButtons; int capBallistics; int capMultiFinger; int capPalmDetect; int infoXupmm; int infoYupmm; int verticalScroll; int horizontalScroll; int verticalWheel; int nExtendedButtons; int capEWmode; int capClickPad; int capDeluxeLEDs; int noAbsoluteFilter; int capReportsV; int capUniformClickPad; int capReportsMin; int capInterTouch; int capReportsMax; int capClearPad; int capAdvancedGestures; int capCoveredPad; int maximumXCoord; int maximumYCoord; int minimumXCoord; int minimumYCoord; int forcePad; int topButtonPad; } ;
typedef  TYPE_2__ synapticshw_t ;
struct psmcpnp_softc {int type; } ;
struct TYPE_5__ {int buttons; int /*<<< orphan*/  model; } ;
struct psm_softc {TYPE_1__ hw; TYPE_2__ synhw; int /*<<< orphan*/  unit; int /*<<< orphan*/  kbdc; } ;
typedef  enum probearg { ____Placeholder_probearg } probearg ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  MOUSE_MODEL_SYNAPTICS ; 
 int PROBE ; 
 int /*<<< orphan*/  PSMCPNP_DRIVER_NAME ; 
#define  PSMCPNP_FORCEPAD 129 
#define  PSMCPNP_TOPBUTTONPAD 128 
 int /*<<< orphan*/  SYNAPTICS_READ_CAPABILITIES ; 
 int /*<<< orphan*/  SYNAPTICS_READ_CAPABILITIES_CONT ; 
 int /*<<< orphan*/  SYNAPTICS_READ_EXTENDED ; 
 int /*<<< orphan*/  SYNAPTICS_READ_IDENTITY ; 
 int /*<<< orphan*/  SYNAPTICS_READ_MAX_COORDS ; 
 int /*<<< orphan*/  SYNAPTICS_READ_MIN_COORDS ; 
 int /*<<< orphan*/  SYNAPTICS_READ_MODEL_ID ; 
 int /*<<< orphan*/  SYNAPTICS_READ_MODES ; 
 int /*<<< orphan*/  SYNAPTICS_READ_RESOLUTIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct psmcpnp_softc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct psm_softc*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct psm_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct psm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  synaptics_support ; 
 int /*<<< orphan*/  FUNC13 (struct psm_softc*,char*,char*) ; 
 scalar_t__ trackpoint_support ; 
 int verbose ; 

__attribute__((used)) static int
FUNC14(struct psm_softc *sc, enum probearg arg)
{
	device_t psmcpnp;
	struct psmcpnp_softc *psmcpnp_sc;
	KBDC kbdc = sc->kbdc;
	synapticshw_t synhw;
	int status[3];
	int buttons;

	FUNC1(3, (LOG_DEBUG, "synaptics: BEGIN init\n"));

	/*
	 * Just to be on the safe side: this avoids troubles with
	 * following mouse_ext_command() when the previous command
	 * was PSMC_SET_RESOLUTION. Set Scaling has no effect on
	 * Synaptics Touchpad behaviour.
	 */
	FUNC10(kbdc, 1);

	/* Identify the Touchpad version. */
	if (FUNC8(kbdc, SYNAPTICS_READ_IDENTITY) == 0)
		return (FALSE);
	if (FUNC7(kbdc, status, 0, 3) != 3)
		return (FALSE);
	if (status[1] != 0x47)
		return (FALSE);

	FUNC2(&synhw, sizeof(synhw));
	synhw.infoMinor = status[0];
	synhw.infoMajor = status[2] & 0x0f;

	if (verbose >= 2)
		FUNC9("Synaptics Touchpad v%d.%d\n", synhw.infoMajor,
		    synhw.infoMinor);

	if (synhw.infoMajor < 4) {
		FUNC9("  Unsupported (pre-v4) Touchpad detected\n");
		return (FALSE);
	}

	/* Get the Touchpad model information. */
	if (FUNC8(kbdc, SYNAPTICS_READ_MODEL_ID) == 0)
		return (FALSE);
	if (FUNC7(kbdc, status, 0, 3) != 3)
		return (FALSE);
	if ((status[1] & 0x01) != 0) {
		FUNC9("  Failed to read model information\n");
		return (FALSE);
	}

	synhw.infoRot180   = (status[0] & 0x80) != 0;
	synhw.infoPortrait = (status[0] & 0x40) != 0;
	synhw.infoSensor   =  status[0] & 0x3f;
	synhw.infoHardware = (status[1] & 0xfe) >> 1;
	synhw.infoNewAbs   = (status[2] & 0x80) != 0;
	synhw.capPen       = (status[2] & 0x40) != 0;
	synhw.infoSimplC   = (status[2] & 0x20) != 0;
	synhw.infoGeometry =  status[2] & 0x0f;

	if (verbose >= 2) {
		FUNC9("  Model information:\n");
		FUNC9("   infoRot180: %d\n", synhw.infoRot180);
		FUNC9("   infoPortrait: %d\n", synhw.infoPortrait);
		FUNC9("   infoSensor: %d\n", synhw.infoSensor);
		FUNC9("   infoHardware: %d\n", synhw.infoHardware);
		FUNC9("   infoNewAbs: %d\n", synhw.infoNewAbs);
		FUNC9("   capPen: %d\n", synhw.capPen);
		FUNC9("   infoSimplC: %d\n", synhw.infoSimplC);
		FUNC9("   infoGeometry: %d\n", synhw.infoGeometry);
	}

	/* Read the extended capability bits. */
	if (FUNC8(kbdc, SYNAPTICS_READ_CAPABILITIES) == 0)
		return (FALSE);
	if (FUNC7(kbdc, status, 0, 3) != 3)
		return (FALSE);
	if (!FUNC0(synhw, 7, 5) && status[1] != 0x47) {
		FUNC9("  Failed to read extended capability bits\n");
		return (FALSE);
	}

	psmcpnp = FUNC4(FUNC3(PSMCPNP_DRIVER_NAME),
	    sc->unit);
	psmcpnp_sc = (psmcpnp != NULL) ? FUNC5(psmcpnp) : NULL;

	/* Set the different capabilities when they exist. */
	buttons = 0;
	synhw.capExtended = (status[0] & 0x80) != 0;
	if (synhw.capExtended) {
		synhw.nExtendedQueries = (status[0] & 0x70) >> 4;
		synhw.capMiddle        = (status[0] & 0x04) != 0;
		synhw.capPassthrough   = (status[2] & 0x80) != 0;
		synhw.capLowPower      = (status[2] & 0x40) != 0;
		synhw.capMultiFingerReport =
					 (status[2] & 0x20) != 0;
		synhw.capSleep         = (status[2] & 0x10) != 0;
		synhw.capFourButtons   = (status[2] & 0x08) != 0;
		synhw.capBallistics    = (status[2] & 0x04) != 0;
		synhw.capMultiFinger   = (status[2] & 0x02) != 0;
		synhw.capPalmDetect    = (status[2] & 0x01) != 0;

		if (!FUNC10(kbdc, 1))
			return (FALSE);
		if (FUNC8(kbdc, SYNAPTICS_READ_RESOLUTIONS) == 0)
			return (FALSE);
		if (FUNC7(kbdc, status, 0, 3) != 3)
			return (FALSE);

		if (status[0] != 0 && (status[1] & 0x80) && status[2] != 0) {
			synhw.infoXupmm = status[0];
			synhw.infoYupmm = status[2];
		}

		if (verbose >= 2) {
			FUNC9("  Extended capabilities:\n");
			FUNC9("   capExtended: %d\n", synhw.capExtended);
			FUNC9("   capMiddle: %d\n", synhw.capMiddle);
			FUNC9("   nExtendedQueries: %d\n",
			    synhw.nExtendedQueries);
			FUNC9("   capPassthrough: %d\n", synhw.capPassthrough);
			FUNC9("   capLowPower: %d\n", synhw.capLowPower);
			FUNC9("   capMultiFingerReport: %d\n",
			    synhw.capMultiFingerReport);
			FUNC9("   capSleep: %d\n", synhw.capSleep);
			FUNC9("   capFourButtons: %d\n", synhw.capFourButtons);
			FUNC9("   capBallistics: %d\n", synhw.capBallistics);
			FUNC9("   capMultiFinger: %d\n", synhw.capMultiFinger);
			FUNC9("   capPalmDetect: %d\n", synhw.capPalmDetect);
			FUNC9("   infoXupmm: %d\n", synhw.infoXupmm);
			FUNC9("   infoYupmm: %d\n", synhw.infoYupmm);
		}

		/*
		 * If nExtendedQueries is 1 or greater, then the TouchPad
		 * supports this number of extended queries. We can load
		 * more information about buttons using query 0x09.
		 */
		if (synhw.nExtendedQueries >= 1) {
			if (!FUNC10(kbdc, 1))
				return (FALSE);
			if (FUNC8(kbdc,
			    SYNAPTICS_READ_EXTENDED) == 0)
				return (FALSE);
			if (FUNC7(kbdc, status, 0, 3) != 3)
				return (FALSE);
			synhw.verticalScroll   = (status[0] & 0x01) != 0;
			synhw.horizontalScroll = (status[0] & 0x02) != 0;
			synhw.verticalWheel    = (status[0] & 0x08) != 0;
			synhw.nExtendedButtons = (status[1] & 0xf0) >> 4;
			synhw.capEWmode        = (status[0] & 0x04) != 0;
			if (verbose >= 2) {
				FUNC9("  Extended model ID:\n");
				FUNC9("   verticalScroll: %d\n",
				    synhw.verticalScroll);
				FUNC9("   horizontalScroll: %d\n",
				    synhw.horizontalScroll);
				FUNC9("   verticalWheel: %d\n",
				    synhw.verticalWheel);
				FUNC9("   nExtendedButtons: %d\n",
				    synhw.nExtendedButtons);
				FUNC9("   capEWmode: %d\n",
				    synhw.capEWmode);
			}
			/*
			 * Add the number of extended buttons to the total
			 * button support count, including the middle button
			 * if capMiddle support bit is set.
			 */
			buttons = synhw.nExtendedButtons + synhw.capMiddle;
		} else
			/*
			 * If the capFourButtons support bit is set,
			 * add a fourth button to the total button count.
			 */
			buttons = synhw.capFourButtons ? 1 : 0;

		/* Read the continued capabilities bits. */
		if (synhw.nExtendedQueries >= 4) {
			if (!FUNC10(kbdc, 1))
				return (FALSE);
			if (FUNC8(kbdc,
			    SYNAPTICS_READ_CAPABILITIES_CONT) == 0)
				return (FALSE);
			if (FUNC7(kbdc, status, 0, 3) != 3)
				return (FALSE);

			synhw.capClickPad         = (status[1] & 0x01) << 1;
			synhw.capClickPad        |= (status[0] & 0x10) != 0;
			synhw.capDeluxeLEDs       = (status[1] & 0x02) != 0;
			synhw.noAbsoluteFilter    = (status[1] & 0x04) != 0;
			synhw.capReportsV         = (status[1] & 0x08) != 0;
			synhw.capUniformClickPad  = (status[1] & 0x10) != 0;
			synhw.capReportsMin       = (status[1] & 0x20) != 0;
			synhw.capInterTouch       = (status[1] & 0x40) != 0;
			synhw.capReportsMax       = (status[0] & 0x02) != 0;
			synhw.capClearPad         = (status[0] & 0x04) != 0;
			synhw.capAdvancedGestures = (status[0] & 0x08) != 0;
			synhw.capCoveredPad       = (status[0] & 0x80) != 0;

			if (synhw.capReportsMax) {
				if (!FUNC10(kbdc, 1))
					return (FALSE);
				if (FUNC8(kbdc,
				    SYNAPTICS_READ_MAX_COORDS) == 0)
					return (FALSE);
				if (FUNC7(kbdc, status, 0, 3) != 3)
					return (FALSE);

				synhw.maximumXCoord = (status[0] << 5) |
						     ((status[1] & 0x0f) << 1);
				synhw.maximumYCoord = (status[2] << 5) |
						     ((status[1] & 0xf0) >> 3);
			} else {
				/*
				 * Typical bezel limits. Taken from 'Synaptics
				 * PS/2 * TouchPad Interfacing Guide' p.3.2.3.
				 */
				synhw.maximumXCoord = 5472;
				synhw.maximumYCoord = 4448;
			}

			if (synhw.capReportsMin) {
				if (!FUNC10(kbdc, 1))
					return (FALSE);
				if (FUNC8(kbdc,
				    SYNAPTICS_READ_MIN_COORDS) == 0)
					return (FALSE);
				if (FUNC7(kbdc, status, 0, 3) != 3)
					return (FALSE);

				synhw.minimumXCoord = (status[0] << 5) |
						     ((status[1] & 0x0f) << 1);
				synhw.minimumYCoord = (status[2] << 5) |
						     ((status[1] & 0xf0) >> 3);
			} else {
				/*
				 * Typical bezel limits. Taken from 'Synaptics
				 * PS/2 * TouchPad Interfacing Guide' p.3.2.3.
				 */
				synhw.minimumXCoord = 1472;
				synhw.minimumYCoord = 1408;
			}

			/*
			 * ClickPad properties are not exported through PS/2
			 * protocol. Detection is based on controller's PnP ID.
			 */
			if (synhw.capClickPad && psmcpnp_sc != NULL) {
				switch (psmcpnp_sc->type) {
				case PSMCPNP_FORCEPAD:
					synhw.forcePad = 1;
					break;
				case PSMCPNP_TOPBUTTONPAD:
					synhw.topButtonPad = 1;
					break;
				default:
					break;
				}
			}

			if (verbose >= 2) {
				FUNC9("  Continued capabilities:\n");
				FUNC9("   capClickPad: %d\n",
				       synhw.capClickPad);
				FUNC9("   capDeluxeLEDs: %d\n",
				       synhw.capDeluxeLEDs);
				FUNC9("   noAbsoluteFilter: %d\n",
				       synhw.noAbsoluteFilter);
				FUNC9("   capReportsV: %d\n",
				       synhw.capReportsV);
				FUNC9("   capUniformClickPad: %d\n",
				       synhw.capUniformClickPad);
				FUNC9("   capReportsMin: %d\n",
				       synhw.capReportsMin);
				FUNC9("   capInterTouch: %d\n",
				       synhw.capInterTouch);
				FUNC9("   capReportsMax: %d\n",
				       synhw.capReportsMax);
				FUNC9("   capClearPad: %d\n",
				       synhw.capClearPad);
				FUNC9("   capAdvancedGestures: %d\n",
				       synhw.capAdvancedGestures);
				FUNC9("   capCoveredPad: %d\n",
				       synhw.capCoveredPad);
				if (synhw.capReportsMax) {
					FUNC9("   maximumXCoord: %d\n",
					       synhw.maximumXCoord);
					FUNC9("   maximumYCoord: %d\n",
					       synhw.maximumYCoord);
				}
				if (synhw.capReportsMin) {
					FUNC9("   minimumXCoord: %d\n",
					       synhw.minimumXCoord);
					FUNC9("   minimumYCoord: %d\n",
					       synhw.minimumYCoord);
				}
				if (synhw.capClickPad) {
					FUNC9("  Clickpad capabilities:\n");
					FUNC9("   forcePad: %d\n",
					       synhw.forcePad);
					FUNC9("   topButtonPad: %d\n",
					       synhw.topButtonPad);
				}
			}
			buttons += synhw.capClickPad;
		}
	}

	if (verbose >= 2) {
		if (synhw.capExtended)
			FUNC9("  Additional Buttons: %d\n", buttons);
		else
			FUNC9("  No extended capabilities\n");
	}

	/*
	 * Add the default number of 3 buttons to the total
	 * count of supported buttons reported above.
	 */
	buttons += 3;

	/*
	 * Read the mode byte.
	 *
	 * XXX: Note the Synaptics documentation also defines the first
	 * byte of the response to this query to be a constant 0x3b, this
	 * does not appear to be true for Touchpads with guest devices.
	 */
	if (FUNC8(kbdc, SYNAPTICS_READ_MODES) == 0)
		return (FALSE);
	if (FUNC7(kbdc, status, 0, 3) != 3)
		return (FALSE);
	if (!FUNC0(synhw, 7, 5) && status[1] != 0x47) {
		FUNC9("  Failed to read mode byte\n");
		return (FALSE);
	}

	if (arg == PROBE)
		sc->synhw = synhw;
	if (!synaptics_support)
		return (FALSE);

	/* Set mouse type just now for synaptics_set_mode() */
	sc->hw.model = MOUSE_MODEL_SYNAPTICS;

	FUNC12(sc, FUNC11(sc));

	if (trackpoint_support && synhw.capPassthrough) {
		FUNC6(sc, arg);
	}

	FUNC1(3, (LOG_DEBUG, "synaptics: END init (%d buttons)\n", buttons));

	if (arg == PROBE) {
		/* Create sysctl tree. */
		FUNC13(sc, "synaptics",
		    "Synaptics TouchPad");
		sc->hw.buttons = buttons;
	}

	return (TRUE);
}